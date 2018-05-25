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
using System.Runtime.Serialization;
using System.Web.Http;

namespace CuddlyWombat.Controllers.API
{
    public class MenuController : ApiController
    {
        [HttpGet]
        public string GetAllMenusNMenuItems()
        {
            var result = String.Empty;
            var response = new GetAllMenuItemsResponse();
            try
            {
                MenuService service = new MenuService();

                response = service.PerformGetAllMenusNMenuItems();

                result = JsonConvert.SerializeObject(response);
            }
            catch (Exception ex)
            {
                response = new GetAllMenuItemsResponse()
                {
                    MessageString = ex.Message,
                    MessageStatusID = (byte)EMessageStatus.Success
                };
            }
            return result;
        }

        [HttpPost]
        [Route("api/Menu/CreateNewMenuItem")]
        public string CreateNewMenuItem([FromBody]string req)
        {
            var result = String.Empty;
            var request = new SaveMenuItemRequest();
            var response = new SaveMenuItemResponse();

            try
            {
                request = JsonConvert.DeserializeObject<SaveMenuItemRequest>(req);

                MenuService service = new MenuService();

                response = service.PerformCreateNewMenuItem(request);
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
        [Route("api/Menu/CreateNewMenu")]
        public string CreateNewMenu([FromBody]string req)
        {
            var result = String.Empty;
            var request = new SaveMenuRequest();
            var response = new SaveMenuResponse();

            try
            {
                request = JsonConvert.DeserializeObject<SaveMenuRequest>(req);

                MenuService service = new MenuService();

                response = service.PerformCreateNewMenu(request);
            }
            catch (Exception ex)
            {
                response = new SaveMenuResponse()
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
