var eMessageStatus = {
    Success: 1,
    Fail: 2,
    Exception: 3
};

var eReservationStatus = {
    Pending: 1,
    Canceled: 2,
    Completed: 3
};

var eOrderStatus = {
    Pending: 1,
    Canceled: 2,
    Completed: 3
};

var eOrderType = {
    Phone: 1,
    Online: 2,
    OnSite: 3
};

function showAjaxMessage(MessageString, MessageStatusID) {
    var messageType = 1;
    switch (MessageStatusID) {
        case eMessageStatus.Success:
            messageType = 1;
            break;
        case eMessageStatus.Fail:
            messageType = 2;
            break;
        case eMessageStatus.Exception:
            messageType = 3;
            break;
    }
    notie.alert({ text: MessageString, type: messageType });
}
