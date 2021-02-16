var CardService = (function () {

    var GetByCardId = function (CardId) {


        var Card = { CardId: "", Name: "", Description: "", PriorityId:"" };

        var settings = {
            "url": "https://localhost:5002/api/Card/Get",
            "method": "POST",
            "timeout": 0,
            "async": false,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify({ "cardId": CardId }),
        };

        $.ajax(settings).done(function (response) {
            Card.CardId = CardId;
            Card.Name = response.name;
            Card.Description = response.description;
            Card.PriorityId = response.priorityId;
        });

        return Card;
    };

    var Save = function (Card) {

        var SavedCard;
        var settings = {
            "url": "https://localhost:5002/api/Card/CreateCard",
            "method": "POST",
            "timeout": 0,
            "async": false,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify(Card),
            success: function (Deneme) {
                //  console.log(Deneme);
                //if (Result.d.Success) {
                //    var ResultData = JSON.parse(Result.d.Data);

                //    AxaHayatLibrary.ShowStatus($("#StatusVeriSorgulama"), "Aktarım Durum Sorgulama servisi başarı ile çalışmıştır.", "success");

                //} else {
                //    OpenDialog("Hata", Result.d.Message);

                //}
            },
            error: function (response) {
                //  console.log("Error");
                // Update the UI here to reflect that the request was unsuccessful
                // doSomethingMoreClever();
            },
            complete: function (response) {
                // console.log("Complete");
                // Update the UI here to reflect completion
                //doSomethingEvenMoreClever();
            } 
        };

      

        return $.ajax(settings);
    };

    var Update = function (Card) {

        var settings = {
            "url": "https://localhost:5002/api/Card/Update",
            "method": "PATCH",
            "timeout": 0,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify(Card),
        };

        $.ajax(settings).done(function (response) {
            console.log(response);
        });

    };

    var Delete = function (CardId) {
        var settings = {
            "url": "https://localhost:5002/api/Card/DeleteCard",
            "method": "POST",
            "timeout": 0,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify({ "cardId": CardId }),
        };

        $.ajax(settings).done(function (response) {
            console.log(response);
        });
    };

    var MoveDifferentColumn = function (SwimLaneId, CardId) {
        var settings = {
            "url": "https://localhost:5002/api/Card/MoveCard",
            "method": "POST",
            "timeout": 0,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify({ "swimLaneId": SwimLaneId, "cardId": CardId }),
        };

        $.ajax(settings).done(function (response) {
            console.log(response);
        });
    };

    var ChangeVerticalOrder = function (containerID) {
        //document.getElementById(containerID).classList.remove("modal_show");
        //removeModalCover(containerID);
    };


    return {
        CardGetByCardId: GetByCardId,
        CardSave: Save,
        CardUpdate: Update,
        CardDelete: Delete,
        CardMoveDifferentColumn: MoveDifferentColumn,
        CardChangeVerticalOrder: ChangeVerticalOrder


    }
})();

