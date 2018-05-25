using CuddlyWombat.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace CuddlyWombat.Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IOrderService" in both code and config file together.
    [ServiceContract]
    public interface IOrderService
    {
        [OperationContract]
        GetAllMenuItemsResponse PerformGetAllMenuDetails();

        [OperationContract]
        GetOrderDetailsResponse PerformGetAllOrderDetails(GetOrderDetailsRequest request);

        [OperationContract]
        SaveOrderResponse PerformCreateNewOrder(SaveOrderRequest request);

        [OperationContract]
        SaveOrderResponse PerformUpdateOrderStatus(UpdateOrderRequest request);
    }
}
