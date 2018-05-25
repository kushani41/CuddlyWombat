using CuddlyWombat.Data;
using CuddlyWombat.Enums;
using CuddlyWombat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Security.Claims;
using System.ServiceModel;
using System.Text;

namespace CuddlyWombat.Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "OrderService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select OrderService.svc or OrderService.svc.cs at the Solution Explorer and start debugging.
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single, ConcurrencyMode = ConcurrencyMode.Multiple)]
    public class OrderService : IOrderService
    {
        public OrderService()
        {
        }

        public GetAllMenuItemsResponse PerformGetAllMenuDetails()
        {
            GetAllMenuItemsResponse response = new GetAllMenuItemsResponse();

            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;

                    response.MenuItems = (from m in db.MenuItems
                                          select m).ToList();

                    response.Menus = (from m in db.Menus
                                      select m).ToList();


                    response.MenuTypes = (from m in db.MenuTypes
                                          select m).ToList();

                    foreach (var menuType in response.MenuTypes)
                    {
                        menuType.Menus = null;
                    }

                    foreach (var menu in response.Menus)
                    {
                        menu.MenuItems = (from m in db.MenuMenuItems
                                          join mi in db.MenuItems on m.MenuItemID equals mi.MenuItemID
                                          where m.MenuID == menu.MenuID
                                          select mi).ToList();
                    }
                    response.MessageString = "Menu details successfully retrieved.";
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

        public GetOrderDetailsResponse PerformGetAllOrderDetails(GetOrderDetailsRequest request)
        {
            GetOrderDetailsResponse response = new GetOrderDetailsResponse();

            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;

                    response.MenuItems = (from m in db.MenuItems
                                          where m.IsUsed == true
                                          select m).ToList();

                    if (request.IsInternalUser)
                    {
                        response.Orders = (from o in db.Orders.Include("OrderStatu").Include("OrderType")
                                           select o).ToList();
                    }
                    else
                    {
                        response.Orders = (from o in db.Orders.Include("OrderStatu").Include("OrderType")
                                           where o.CustomerID == request.UserID && o.OrderTypeID == (byte)EOrderTypes.Online
                                           select o).ToList();
                    }

                    foreach (var order in response.Orders)
                    {
                        if (order.CustomerID.HasValue)
                        {
                            order.Customer = (from c in db.Customers
                                              where c.CustomerID == order.CustomerID
                                              select c).FirstOrDefault();
                            order.Customer.Orders = null;
                            order.Customer.Reservations = null;
                            order.Customer.Password = null;
                        }

                        order.OrderStatu.Orders = null;
                        order.OrderType.Orders = null;

                        order.OrderMenuItems = (from o in db.OrderMenuItems
                                                where o.OrderID == order.OrderID
                                                select o).ToList();

                        foreach (var omi in order.OrderMenuItems)
                        {
                            omi.Order = null;
                        }

                        foreach (var mi in response.MenuItems)
                        {
                            mi.OrderMenuItems = null;
                        }
                    }


                    response.MessageString = "Order details successfully retrieved.";
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

        public SaveOrderResponse PerformCreateNewOrder(SaveOrderRequest request)
        {
            SaveOrderResponse response = new SaveOrderResponse();

            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;

                    db.Orders.Add(request.Order);
                    db.SaveChanges();

                    foreach (var o in request.OrderMenuItems)
                    {
                        o.OrderID = request.Order.OrderID;
                        db.OrderMenuItems.Add(o);
                    }

                    db.SaveChanges();

                    response.MessageString = "New Order is successfully created";
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

        public SaveOrderResponse PerformUpdateOrderStatus(UpdateOrderRequest request)
        {
            SaveOrderResponse response = new SaveOrderResponse();
            var modifiedDate = DateTime.Now;
            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;

                    var orderToUpdate = (from o in db.Orders
                                         where o.OrderID == request.OrderID
                                         select o).FirstOrDefault();

                    if (orderToUpdate != null)
                    {
                        var orderHistory = new OrderHistory()
                        {
                            OrderID = orderToUpdate.OrderID,
                            TableID = orderToUpdate.TableID,
                            CustomerID = orderToUpdate.CustomerID,
                            OrderTypeID = orderToUpdate.OrderTypeID,
                            OrderStatusID = orderToUpdate.OrderStatusID,
                            TotalPrice = orderToUpdate.TotalPrice,
                            PickUpTime = orderToUpdate.PickUpTime,
                            IsPaid = orderToUpdate.IsPaid,
                            DateCreated = orderToUpdate.DateCreated,
                            DateModified = modifiedDate
                        };

                        db.OrderHistories.Add(orderHistory);
                        orderToUpdate.OrderStatusID = request.OrderStatusID;
                        orderToUpdate.DateModified = modifiedDate;
                    }
                    else
                    {

                        response.MessageString = "Please select an order";
                        response.MessageStatusID = (byte)EMessageStatus.Fail;

                        return response;
                    }

                    db.SaveChanges();

                    if (request.OrderStatusID == (byte)EOrderStatus.Canceled)
                    {
                        response.MessageString = "Order is cancelled";
                    }
                    else if (request.OrderStatusID == (byte)EOrderStatus.Completed)
                    {
                        response.MessageString = "Order Status updated to Completed";
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
    }
}
