using CuddlyWombat.Data;
using CuddlyWombat.Enums;
using CuddlyWombat.Models;
using CuddlyWombat.Service;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Web.Http;

namespace CuddlyWombat.Controllers.API
{
    public class OrderController : ApiController
    {
        [HttpGet]
        [Route("api/Order/GetAllMenuDetails")]
        public string GetAllMenuDetails()
        {
            var result = String.Empty;
            var response = new GetAllMenuItemsResponse();
            try
            {
                OrderService service = new OrderService();

                response = service.PerformGetAllMenuDetails();
            }
            catch (Exception ex)
            {
                response.MessageString = ex.Message;
                response.MessageStatusID = (byte)EMessageStatus.Exception;
            }
            result = JsonConvert.SerializeObject(response);
            return result;
        }

        [HttpGet]
        [Route("api/Order/GetAllOrderDetails")]
        public string GetAllOrderDetails()
        {
            var result = String.Empty;
            var request = new GetOrderDetailsRequest();
            var response = new GetOrderDetailsResponse();
            try
            {
                ClaimsIdentity identity = (ClaimsIdentity)User.Identity;
                var isInternalUser = Convert.ToBoolean(identity.Claims.Where(x => x.Type == "IsInternalUser").First().Value);
                int userID = Int32.Parse(identity.Claims.Where(x => x.Type == "UserID").First().Value);

                request.IsInternalUser = isInternalUser;
                request.UserID = userID;

                OrderService service = new OrderService();

                response = service.PerformGetAllOrderDetails(request);
            }
            catch (Exception ex)
            {
                response.MessageString = ex.Message;
                response.MessageStatusID = (byte)EMessageStatus.Exception;
            }
            result = JsonConvert.SerializeObject(response);
            return result;
        }

        [HttpPost]
        [Route("api/Order/CreateNewOrder")]
        public string CreateNewOrder([FromBody]string req)
        {
            var result = String.Empty;
            var request = new SaveOrderRequest();
            var response = new SaveOrderResponse();
            
            try
            {
                OrderService service = new OrderService();

                request = JsonConvert.DeserializeObject<SaveOrderRequest>(req);

                ClaimsIdentity identity = (ClaimsIdentity)User.Identity;
                int userID = Int32.Parse(identity.Claims.Where(x => x.Type == "UserID").First().Value);

                if (request.Order.OrderTypeID == (byte)EOrderTypes.Online)
                {
                    request.Order.CustomerID = userID;
                }
                
                response = service.PerformCreateNewOrder(request);

            }
            catch (Exception ex)
            {
                response = new SaveOrderResponse()
                {
                    MessageString = ex.Message,
                    MessageStatusID = (byte)EMessageStatus.Success
                };
            }

            result = JsonConvert.SerializeObject(response);

            return result;
        }

        [HttpPost]
        [Route("api/Order/UpdateOrderStatus")]
        public string UpdateOrderStatus([FromBody]string req)
        {
            var result = String.Empty;
            var request = new UpdateOrderRequest();
            var response = new SaveOrderResponse();

            try
            {
                using (var db = new CuddlyWombatEntities())
                {
                    db.Configuration.LazyLoadingEnabled = false;
                    db.Configuration.ProxyCreationEnabled = false;

                    request = JsonConvert.DeserializeObject<UpdateOrderRequest>(req);

                    OrderService service = new OrderService();

                    response = service.PerformUpdateOrderStatus(request);
                }
            }
            catch (Exception ex)
            {
                response = new SaveOrderResponse()
                {
                    MessageString = ex.Message,
                    MessageStatusID = (byte)EMessageStatus.Success
                };
            }

            result = JsonConvert.SerializeObject(response);

            return result;
        }
    }
}
