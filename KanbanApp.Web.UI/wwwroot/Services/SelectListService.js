
var BoardService = (function () {

    var GetByBoardId = function (BoardId) {

        var Board;

        var settings = {
            "url": "https://localhost:5002/api/Board",
            "method": "POST",
            "timeout": 0,
            "async": false,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify({ "boardId": BoardId }),
        };

        $.ajax(settings).done(function (response) {
            Board = response;
        });

        return Board;
    };

    var Save = function (Board) {
        var Result;

        var settings = {
            "url": "https://localhost:5002/api/Board/Add",
            "method": "POST",
            "timeout": 0,
            "async": false,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify(Board),
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

        //    .done(function (response) {
        //    console.log(response);
        //    //  return response;
        //});

        //  .always(function (xhr, status) {
        //    Result= xhr.responseText;
        //});

        //  return Result;
    };

    var Update = function (Board) {
        // var Result;

        var settings = {
            "url": "https://localhost:5002/api/Board/Update",
            "method": "PATCH",
            "timeout": 0,
            "async": false,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify(Board),
            success: function (response) {
                //    Result = response;
            },
            error: function (response) {
                // Update the UI here to reflect that the request was unsuccessful
                // doSomethingMoreClever();
            },
            complete: function (response) {
                // Update the UI here to reflect completion
                //doSomethingEvenMoreClever();
            }
        };

        return $.ajax(settings);

        // return Result;
    };

    var GetBoardSwimLanesByBoardId = function (BoardId) {

        var SwimlineList;

        var settings = {
            "url": "https://localhost:5002/api/Board/GetBoardSwimLanes/" + BoardId,
            "method": "GET",
            "timeout": 0,
            "async": false
        };

        $.ajax(settings).done(function (response) {
            if (response.success == true) {
                console.log(response);
            }
            SwimlineList = response;
        });

        return SwimlineList;

    };

    var GetBoardList = function () {

        var Result;

        var settings = {
            "url": "https://localhost:5002/api/Board/GetList",
            "method": "GET",
            "timeout": 0,
            "async": false
        };

        $.ajax(settings).done(function (response) {
            Result = response;
        });

        return Result;
    };

    return {
        BoardGetByBoardId: GetByBoardId,
        BoardSave: Save,
        BoardUpdate: Update,
        BoardSwimLanesByBoardId: GetBoardSwimLanesByBoardId,
        BoardGetBoardList: GetBoardList


    }
})();

