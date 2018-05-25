using CuddlyWombat.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuddlyWombat.Data
{
    public class GetAllMenuItemsResponse : BaseResponse
    {
        public List<Menu> Menus { get; set; }
        public List<MenuItem> MenuItems { get; set; }
        public List<MenuType> MenuTypes { get; set; }
    }
}