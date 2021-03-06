﻿using CuddlyWombat.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace CuddlyWombat.Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IMenuService" in both code and config file together.
    [ServiceContract]
    public interface IMenuService
    {
        [OperationContract]
        GetAllMenuItemsResponse PerformGetAllMenusNMenuItems();

        [OperationContract]
        SaveMenuItemResponse PerformCreateNewMenuItem(SaveMenuItemRequest request);

        [OperationContract]
        SaveMenuResponse PerformCreateNewMenu(SaveMenuRequest request);
    }
}
