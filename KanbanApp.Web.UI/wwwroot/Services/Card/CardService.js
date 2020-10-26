var CardService = (function () {

    var GetByCardId = function (CardId) {


        var Card = { CardId: "", Name: "", Description: "" };

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
        };

        $.ajax(settings).done(function (response) {
            SavedCard = response;
           
        });

        return SavedCard;
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

