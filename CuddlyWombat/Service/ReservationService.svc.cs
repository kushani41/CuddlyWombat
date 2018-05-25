using CuddlyWombat.Data;
using CuddlyWombat.Enums;
using CuddlyWombat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace CuddlyWombat.Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "ReservationService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select ReservationService.svc or ReservationService.svc.cs at the Solution Explorer and start debugging.
    public class ReservationService : IReservationService
    {
        public ReservationService()
        {

        }

        public GetAllReservationResponse PerformGetAllReservations(GetAllReservationRequest request)
        {
            GetAllReservationResponse response = new GetAllReservationResponse();

            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;

                    var allReservations = new List<Reservation>();

                    if (request.IsInternalUser)
                    {
                        allReservations = (from r in db.Reservations.Include("ReservationStatu").Include("Customer")
                                           where r.ReservationStatusID != (byte)EReservationStatus.Canceled
                                           orderby r.ReservationDate
                                           select r).ToList();
                    }
                    else
                    {
                        var customer = (from c in db.Customers
                                        where c.CustomerID == request.UserID
                                        select c).FirstOrDefault();
                        if (customer != null)
                        {
                            allReservations = (from r in db.Reservations.Include("ReservationStatu").Include("Customer")
                                               where r.CustomerID == customer.CustomerID && r.ReservationStatusID != (byte)EReservationStatus.Canceled
                                               orderby r.ReservationDate
                                               select r).ToList();
                        }
                        else
                        {
                            response = new GetAllReservationResponse()
                            {
                                MessageString = "Please contact system admin",
                                MessageStatusID = (byte)EMessageStatus.Fail
                            };
                        }
                    }
                    foreach (var re in allReservations)
                    {
                        re.Customer.Reservations = null;
                        re.Customer.Password = null;
                        re.ReservationStatu.Reservations = null;
                    }
                    response.Reservations = allReservations;

                    var averageCapacityOfTable = (from t in db.Tables
                                                  where t.IsAvailable == true
                                                  select t.Capacity).Average();

                    response.AverageCapacityOfTable = (int)averageCapacityOfTable;
                }
            }
            catch (Exception ex)
            {
                response.MessageStatusID = (byte)EMessageStatus.Exception;
                response.MessageString = ex.Message;
            }

            return response;
        }

        public SaveMenuItemResponse PerformUpdateReservationStatus(UpdateReservationRequest request)
        {
            SaveMenuItemResponse response = new SaveMenuItemResponse();
            var modifiedDate = DateTime.Now;

            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;

                    var reservationToUpdate = (from r in db.Reservations
                                               where r.ReservationID == request.ReservationID
                                               select r).FirstOrDefault();

                    if (reservationToUpdate != null)
                    {
                        var reservationHistory = new ReservationHistory()
                        {
                            ReservationID = reservationToUpdate.ReservationID,
                            CustomerID = reservationToUpdate.CustomerID,
                            NumberOfTables = reservationToUpdate.NumberOfTables,
                            ReservationDate = reservationToUpdate.ReservationDate,
                            ReservationStatusID = reservationToUpdate.ReservationStatusID,
                            DateCreated = reservationToUpdate.DateCreated,
                            DateModified = modifiedDate
                        };

                        db.ReservationHistories.Add(reservationHistory);
                        reservationToUpdate.ReservationStatusID = request.ReservationStatusID;
                        reservationToUpdate.DateModified = modifiedDate;
                    }
                    else
                    {
                        response = new SaveMenuItemResponse()
                        {
                            MessageString = "Please select a reservation",
                            MessageStatusID = (byte)EMessageStatus.Success
                        };
                        return response;
                    }

                    db.SaveChanges();

                    if (request.ReservationStatusID == (byte)EReservationStatus.Canceled)
                    {
                        response.MessageString = "Reservation is cancelled";
                    }
                    else if (request.ReservationStatusID == (byte)EReservationStatus.Completed)
                    {
                        response.MessageString = "Reservation Status updated to Completed";
                    }

                    response.MessageStatusID = (byte)EMessageStatus.Success;
                }
            }
            catch (Exception ex)
            {
                response.MessageStatusID = (byte)EMessageStatus.Exception;
                response.MessageString = ex.Message;
            }

            return response;
        }

        public CreateNewReservationResponse PerformCreateNewReservation(CreateNewReservationRequest request)
        {
            CreateNewReservationResponse response = new CreateNewReservationResponse();
            var createdDate = DateTime.Now;

            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;



                    var totalTables = (from t in db.Tables
                                       where t.IsAvailable == true
                                       select t).ToList();

                    int totalTableCount = totalTables.Count();

                    var customer = (from c in db.Customers
                                    where c.CustomerID == request.Reservation.CustomerID
                                    select c).FirstOrDefault();

                    if (customer == null)
                    {
                        response.MessageString = "Cannot find the customer";
                        response.MessageStatusID = (byte)EMessageStatus.Fail;

                        return response;
                    }

                    if (totalTableCount < request.Reservation.NumberOfTables)
                    {
                        response.MessageString = "Maximum tables you can book is " + totalTableCount;
                        response.MessageStatusID = (byte)EMessageStatus.Fail;

                        return response;
                    }

                    var allReservationsForGivenDate = (from r in db.Reservations
                                                       where r.ReservationDate == request.Reservation.ReservationDate
                                                       select r).ToList();

                    var allAvailableTablesForGivenDate = 0;
                    var allReservedTablesForGivenDate = 0;

                    foreach (var r in allReservationsForGivenDate)
                    {
                        allReservedTablesForGivenDate = allReservedTablesForGivenDate + r.NumberOfTables;
                    }
                    allAvailableTablesForGivenDate = totalTableCount - allReservedTablesForGivenDate;

                    if (allAvailableTablesForGivenDate < request.Reservation.NumberOfTables)
                    {
                        response.MessageString = "No available tables for the selected date, Please select a different date.";
                        response.MessageStatusID = (byte)EMessageStatus.Fail;
                        return response;
                    }

                    var reservation = new Reservation()
                    {
                        ReservationID = 0,
                        CustomerID = request.Reservation.CustomerID,
                        ReservationStatusID = request.Reservation.ReservationStatusID,
                        ReservationDate = request.Reservation.ReservationDate,
                        NumberOfTables = request.Reservation.NumberOfTables,
                        DateCreated = createdDate
                    };

                    db.Reservations.Add(reservation);
                    db.SaveChanges();

                    response.MessageString = "Reservation successfully added";
                    response.MessageStatusID = (byte)EMessageStatus.Success;
                }
            }
            catch (Exception ex)
            {
                response.MessageStatusID = (byte)EMessageStatus.Exception;
                response.MessageString = ex.Message;
            }

            return response;
        }
    }
}
