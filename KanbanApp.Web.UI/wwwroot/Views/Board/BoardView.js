var BoardView = (function () {

    var GetSwimLanesByBoardId = function (BoardId) {

        var BoardSwimLanes = BoardService.BoardSwimLanesByBoardId(BoardId);

        for (var i = 0; i < BoardSwimLanes.data.length; i++) {



        }


    };

    var Save = function (Card) {
        var settings = {
            "url": "https://localhost:44321//api/Card/Add",
            "method": "POST",
            "timeout": 0,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify({ "boardId": "1", "swimLaneId": "3", "name": "Önyüz tasarımları yapılacak 4", "description": "Önyüz tasarımları yapılacak bitirilecek 4", "priorityId": "1", "cardWeightSizeId": "5", "cardTypeId": "TASK", "estimateHours": "5" }),
        };

        $.ajax(settings).done(function (response) {

            console.log(response);
        });

        //  Alert(Card.Name);

    };

    var Delete = function (CardId) {
        document.body.removeChild(document.getElementById(modalCoverID + "_cover"));
    };

    var MoveDifferentColumn = function (NewColumnId) {
        //createModalCover(containerID);
        //document.getElementById(containerID).classList.add("modal_show");
    };

    var ChangeVerticalOrder = function (containerID) {
        //document.getElementById(containerID).classList.remove("modal_show");
        //removeModalCover(containerID);
    };


    return {
        CardGetByCardId: GetByCardId,
        CardSave: Save,
        CardDelete: Delete,
        CardMoveDifferentColumn: MoveDifferentColumn,
        CardChangeVerticalOrder: ChangeVerticalOrder


    }
})();

