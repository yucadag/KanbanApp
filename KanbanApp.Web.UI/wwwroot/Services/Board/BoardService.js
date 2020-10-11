//const baseurl = "https://localhost:44321/api/";
//let todos = null;
//function getCount(data) {
//    const el = $("#counter");
//    let name = "to-do";
//    if (data) {
//        if (data > 1) {
//            name = "to-dos";
//        }
//        el.text(data + " " + name);
//    } else {
//        el.text("No " + name);
//    }
//}

//$(document).ready(function() {
//    $("#btnSave").on("click", function() {
//        BoardSave();
//    });
    
//});

//function getData() {
//    $.ajax({
//        type: "GET",
//        url: uri,
//        cache: false,
//        success: function(data) {
//            const tBody = $("#todos");

//            $(tBody).empty();

//            getCount(data.length);

//            $.each(data, function(key, item) {
//                const tr = $("<tr></tr>")
//                    .append(
//                        $("<td></td>").append(
//                            $("<input/>", {
//                                type: "checkbox",
//                                disabled: true,
//                                checked: item.isComplete
//                            })
//                        )
//                    )
//                    .append($("<td></td>").text(item.name))
//                    .append(
//                        $("<td></td>").append(
//                            $("<button>Edit</button>").on("click", function() {
//                                editItem(item.id);
//                            })
//                        )
//                    )
//                    .append(
//                        $("<td></td>").append(
//                            $("<button>Delete</button>").on("click", function() {
//                                deleteItem(item.id);
//                            })
//                        )
//                    );

//                tr.appendTo(tBody);
//            });

//            todos = data;
//        }
//    });
//}

//function BoardSave() {
//    const item = {
//        Name: $("#txtBoardName").val(),
//        Description: $("#txtBoardDescription").val()
//    };

//    $.ajax({
//        type: "POST",
//        accepts: "application/json",
//        url: baseurl+"123",
//        contentType: "application/json",
//        data: JSON.stringify(item),
//        beforeSend: function() {
// //alert('Mesaj');
//},
     
//        error: function(jqXHR, textStatus, errorThrown) {
//            alert("Something went wrong!");
//        },
//        success: function(result) {
//           // getData();
//            $("#add-name").val("");
//        }
//    }).complete(function() {
//         //   alert('Bitti');
//        });
//}

//function deleteBoard(id) {
//    $.ajax({
//        url: baseurl + "/" + id,
//        type: "DELETE",
//        success: function(result) {
//            getData();
//        }
//    });
//}

//function editBoard(id) {
//    $.each(todos, function(key, item) {
//        if (item.id === id) {
//            $("#edit-name").val(item.name);
//            $("#edit-id").val(item.id);
//            $("#edit-isComplete")[0].checked = item.isComplete;
//        }
//    });
//    $("#spoiler").css({ display: "block" });
//}

//$(".my-form").on("submit", function() {
//    const item = {
//        name: $("#edit-name").val(),
//        isComplete: $("#edit-isComplete").is(":checked"),
//        id: $("#edit-id").val()
//    };

//    $.ajax({
//        url: uri + "/" + $("#edit-id").val(),
//        type: "PUT",
//        accepts: "application/json",
//        contentType: "application/json",
//        data: JSON.stringify(item),
//        success: function(result) {
//            getData();
//        }
//    });

//    closeInput();
//    return false;
//});

//function closeInput() {
//    $("#spoiler").css({ display: "none" });
//}





var BoardService = (function () {

    var GetByBoardId = function (BoardId) {

        var SwimlineList;

        var settings = {
            "url": "https://localhost:44321/api/Board/Get/" + BoardId,
            "method": "GET",
            "timeout": 0,
        };

        $.ajax(settings).done(function (response) {
            SwimlineList= response;
        });

        return SwimlineList;
    };

    var Save = function (Card) {
        var settings = {
            "url": "https://localhost:44321/api/Board/Add",
            "method": "POST",
            "timeout": 0,
            "headers": {
                "Content-Type": "application/json"
            },
            "data": JSON.stringify({ "boardId": "2", "ownerId": "1", "name": "APÝ Ýþlemleri 2", "description": "APÝ Ýþlemleri burada yapýlacak 2" }),
        };

        $.ajax(settings).done(function (response) {
            return response;
        });

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
            SwimlineList= response;
        });

        return SwimlineList;

    };

  

    return {
        BoardGetByBoardId: GetByBoardId,
        BoardSave: Save,
        BoardSwimLanesByBoardId: GetBoardSwimLanesByBoardId


    }
})();

