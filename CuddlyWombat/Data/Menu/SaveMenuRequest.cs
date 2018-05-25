using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CuddlyWombat.Data
{
    public class SaveMenuRequest
    {
        public int MenuID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int MenuTypeID { get; set; }
        public List<int> MenuItemIDs { get; set; }
    }
}