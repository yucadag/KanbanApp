function switchView(templateUrl, viewData) {

    $.get(templateUrl, function (data) {
        var template = Handlebars.compile(data);
        var html_data = template(viewData);
        $("#BoardContent").append(html_data);
    });
}

function SwimLaneTest(SwimLaneName, swimLaneId, boardId) {

    var response = SwimLaneService.SwimLaneCards(boardId, swimLaneId);

    var viewData = {
        BoardId:"1",
        id: swimLaneId,
        SwimLaneName: SwimLaneName,
        cards: response
    };
    var templateUrl = "https://localhost:5001/Components/SwimLine/SwimLaneTemplate.html";
    switchView(templateUrl, viewData);
}

function ApplyDragula(SwimLanelist) {

    var drake = dragula({});

    //    .on('drag', function (el) {
    //   // el.className = el.className.replace(' ex-moved', '');
    //    $body = $("body");
    //    $body.addClass("loading");
    //}).on('out', function (el, container) {
    // //   container.className = container.className.replace(' ex-over', '');
    // //   console.log('ex-over');
    //    $body = $("body");
    //    $body.removeClass("loading");
    //});

    for (var i = 0; i < SwimLanelist.length; i++) {
        drake.containers.push(document.getElementById(SwimLanelist[i].swimLaneId));
    }

    drake.on('drop', function (el, target) {
      
        MoveCard(el.id, target.id);
    })

    $("#SaveCard").click(function () {
       
        var BoardId = $('#CardKeys').attr("BoardId");
        var SwimLaneId = $('#CardKeys').attr("SwimLaneId");
        var CardId = $('#CardKeys').attr("CardId");
        var Card = {
            boardId: BoardId,
            swimLaneId: SwimLaneId,
            cardId: CardId,
            name: $('#CardName').val(),
            description: $('#CardDescription').val()
        }
       
        CardService.CardSave(Card);
        $('#modal-lg').modal('hide');
        SwimLaneTest("Done", SwimLaneId, 1);
       
    });
}

function initialize() {

    var SwimLanelist = BoardService.BoardSwimLanesByBoardId(1);

    for (var i = 0; i < SwimLanelist.length; i++) {   
            SwimLaneTest(SwimLanelist[i].name, SwimLanelist[i].swimLaneId,1);
    }
}

function BindCardAdd() {
    
    $('[id^=CardAdd_]').click(function () {

      //  var Card = CardService.CardGetByCardId($(this).attr("CardId"))
        var BoardId = $(this).attr("BoardId");               
        var SwimLaneId = $(this).attr("SwimLaneId");
 
        $('#CardKeys').attr("CardId", "");
        $('#CardKeys').attr("Boardid", BoardId);
        $('#CardKeys').attr("SwimLaneId", SwimLaneId);
        $('#modal-lg').modal('show');
       
       
      
    });

}

function BindCardEdit() {
    $('[id^=CardEdit_]').click(function () {

        var Card = CardService.CardGetByCardId($(this).attr("CardId"))

        $('#CardKeys').attr("CardId", Card.CardId);
        $('#CardKeys').attr("BoardId", "1");
        $('#CardKeys').attr("SwimLaneId", $(this).attr("SwimLaneId"));
        $('#CardName').val(Card.Name);
        $('#CardDescription').val(Card.Description);

        $('#modal-lg').modal('show');

    });

}


function MoveCard(CardId, SwimLaneId) {
    CardService.CardMoveDifferentColumn(SwimLaneId, CardId);
}