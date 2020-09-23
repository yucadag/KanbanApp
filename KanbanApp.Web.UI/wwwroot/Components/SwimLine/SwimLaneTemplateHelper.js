function switchView(target,templateUrl, viewData) {
  
    //$(target).empty().html("<img class='spinner' src='spinner.gif' />");

    $.get(templateUrl, function (data) {
        var template = Handlebars.compile(data);
        var html_data = template(viewData);
        console.log(html_data);
        $(target).empty().html(html_data);
    });



    //$.ajax(templateUrl).done(function (data) {
    //    var template = Handlebars.compile(data);
    //    var html_data = template(viewData);
    //    console.log(html_data);
    //    $(target).empty().html(html_data);
    //}).error(function(msg) {
    //    $("#log").html(msg);
    //});
}

function SwimLaneTest(target, id, SwimLaneName, swimLaneId) {
    // $("#SwimLanes")
    var settings = {
        "url": "https://localhost:5002/api/SwimLane/GetSwimLaneCards/1/" + swimLaneId,
        "method": "GET",
        "timeout": 0,
    };

    $.ajax(settings).done(function (response) {
        console.log(response);
  
  

    var viewData = {
        id: id,
        SwimLaneName: SwimLaneName,
        body: "This is my first post!",
        cards: response.result.resultObject.data
    };
    var templateUrl = "https://localhost:5001/Components/SwimLine/SwimLaneTemplate.html";

        switchView(target, templateUrl, viewData);

    });

}

function S4() {
    return (((1 + Math.random()) * 0x10000) | 0).toString(16).substring(1);
}



function initialize1() {

    var settings = {
        "url": "https://localhost:5002/api/Board/GetBoardSwimLanes/1",
        "method": "GET",
        "timeout": 0,
        "async":false
    };

    $.ajax(settings).done(function (response) {



        for (var i = 0; i < response.result.resultObject.data.length; i++) {
            if (i == 0) {
                SwimLaneTest($("#SwimLanes1"), 'todo', response.result.resultObject.data[0].name, response.result.resultObject.data[0].swimLaneId);
            }
            if (i == 1) {
                SwimLaneTest($("#SwimLanes2"), 'test', response.result.resultObject.data[1].name, response.result.resultObject.data[1].swimLaneId);
            }
            if (i == 2) {
                SwimLaneTest($("#SwimLanes3"), 'done', response.result.resultObject.data[2].name, response.result.resultObject.data[2].swimLaneId);
            }
        }

        //   SwimLaneTest($("#SwimLanes1"),'todo');
        //  SwimLaneTest($("#SwimLanes2"),'test');
        //SwimLaneTest($("#SwimLanes3"), 'done');

        console.log(response);
    });

    $("#SaveCard").click(function () {

        var BoardId = $("#BoardId").attr("BoardId");
        var SwimLaneId=  $("#SwimLaneId").attr("SwimLaneId");
        // then to call it, plus stitch in '4' in the third group
        var CardId = (S4() + S4() + "-" + S4() + "-4" + S4().substr(0, 3) + "-" + S4() + "-" + S4() + S4() + S4()).toLowerCase();
        var settings = {
            "url": "https://localhost:5002/api/Card/CreateCard",
            "method": "POST",
            "timeout": 0,
            "headers": {
                "Accept": "application/json",
                "Content-Type": "application/json"
            },
            "data": JSON.stringify({ "BoardId": BoardId, "SwimLaneId": SwimLaneId, "CardId": CardId, "Name": $("#CardName").val(), "Description": $("#CardDescription").val()  }),
        };

        $.ajax(settings).done(function (response) {
            console.log(response);
        });

        
        

        
      

    });

   

}


function initialize2() {

    dragula([
        //document.querySelector('#todo'),
        //document.querySelector('#test'),
        //document.querySelector('#done')

        document.querySelector('#SwimLanes1'),
        document.querySelector('#SwimLanes2'),
        document.querySelector('#SwimLanes3')
    ])
        .on('drag', function (el) {
            el.className = el.className.replace(' ex-moved', '');
            $body = $("body");
            $body.addClass("loading");
        })
        .on('drop', function (el, target) {
            el.className += ' ex-moved';
            console.log(target.id);
            var SwimLaneId = target.id;
            var CardId = el.id;

        })
        .on('over', function (el, container) {
            container.className += ' ex-over';
        })
        .on('out', function (el, container) {
         //   container.className = container.className.replace(' ex-over', '');
            console.log('ex-over');
            $body = $("body");
            $body.removeClass("loading");
        });

}