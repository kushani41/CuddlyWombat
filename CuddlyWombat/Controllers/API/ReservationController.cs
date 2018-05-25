using CuddlyWombat.Data;
using CuddlyWombat.Enums;
using CuddlyWombat.Models;
using CuddlyWombat.Service;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Serialization;
using System.Security.Claims;
using System.Web.Http;

namespace CuddlyWombat.Controllers.API
{
    public class ReservationController : ApiController
    {
        [HttpGet]
        public string GetAllReservations()
        {
            var result = String.Empty;
            var request = new GetAllReservationRequest();
            var response = new GetAllReservationResponse();

            ClaimsIdentity identity = (ClaimsIdentity)User.Identity;
            var isInternalUser = Convert.ToBoolean(identity.Claims.Where(x => x.Type == "IsInternalUser").First().Value);
            int userID = Int32.Parse(identity.Claims.Where(x => x.Type == "UserID").First().Value);

            try
            {
                request.IsInternalUser = isInternalUser;
                request.UserID = userID;

                ReservationService service = new ReservationService();
                response = service.PerformGetAllReservations(request);
            }
            catch (Exception ex)
            {
                response = new GetAllReservationResponse()
                {
                    MessageString = ex.Message,
                    MessageStatusID = (byte)EMessageStatus.Exception
                };
                result = JsonConvert.SerializeObject(response);
                return result;
            }

            result = JsonConvert.SerializeObject(response);
            return result;
        }

        [HttpPost]
        [Route("api/Reservation/UpdateReservationStatus")]
        public string UpdateReservationStatus([FromBody]string req)
        {
            var result = String.Empty;
            var request = new UpdateReservationRequest();
            var response = new SaveMenuItemResponse();

            try
            {
                request = JsonConvert.DeserializeObject<UpdateReservationRequest>(req);

                ReservationService service = new ReservationService();
                response = service.PerformUpdateReservationStatus(request);
            }
            catch (Exception ex)
            {
                response = new SaveMenuItemResponse()
                {
                    MessageString = ex.Message,
                    MessageStatusID = (byte)EMessageStatus.Success
                };
            }

            result = JsonConvert.SerializeObject(response);

            return result;
        }

        [HttpPost]
        [Route("api/Reservation/CreateNewReservation")]
        public string CreateNewReservation([FromBody]string req)
        {
            var result = String.Empty;
            var request = new CreateNewReservationRequest();
            var response = new CreateNewReservationResponse();

            //int totalTableCount = Convert.ToInt16(ConfigurationManager.AppSettings["NumberOfTables"]);
            try
            {
                request = JsonConvert.DeserializeObject<CreateNewReservationRequest>(req);
                ReservationService service = new ReservationService();
                response = service.PerformCreateNewReservation(request);

            }
            catch (Exception ex)
            {
                response.MessageString = ex.Message;
                response.MessageStatusID = (byte)EMessageStatus.Success;
            }

            result = JsonConvert.SerializeObject(response);

            return result;
        }
    }
}
