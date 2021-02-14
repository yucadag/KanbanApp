

var NotificationHelper = (function () {

    var Success = function (message) {

        const Toast = Swal.mixin({
            toast: true,
            position: 'top',
            showConfirmButton: false,
            timer: 10000
        });

        Toast.fire({
            type: 'success',
            title: message
        })
    };

    var Info = function (message) {
        const Toast = Swal.mixin({
            toast: true,
            position: 'top',
            showConfirmButton: false,
            timer: 10000
        });

        Toast.fire({
            type: 'info',
            title: message
        })

    };

    var Warning = function (message) {
        const Toast = Swal.mixin({
            toast: true,
            position: 'top',
            showConfirmButton: false,
            timer: 10000
        });

        Toast.fire({
            type: 'warning',
            title: message
        })

    };

    var Error = function (messageHeader, messageList) {
        const Toast = Swal.mixin({
            toast: true,
            position: 'top',
            showConfirmButton: false,
            timer: 10000
        });


        var HtmlMessageList = "<ul>";

        for (var i = 0; i < messageList.length; i++) {
            HtmlMessageList += " <li>" + messageList[i] + "</li>";
        }

        HtmlMessageList += "</ul>";

        Toast.fire({
            type: 'error',
            title: messageHeader,
            html: HtmlMessageList
        })

    };



    return {
        ShowSuccess: Success,
        ShowInfo: Info,
        ShowWarning: Warning,
        ShowError: Error


    }
})();
