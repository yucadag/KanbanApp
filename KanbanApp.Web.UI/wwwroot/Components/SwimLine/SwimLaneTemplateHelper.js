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
        BoardId: "1",
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

    drake.on('drop', function (el, target, source, sibling) {

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
            description: $('#CardDescription').val(),
            priorityId: parseInt($("#CardPriority").val())
        }

        var NewCard = CardService.CardSave(Card);
        $('#modal-lg').modal('hide');
        AddCardTemplate(NewCard);


    });
}

function initialize() {

    var SwimLanelist = BoardService.BoardSwimLanesByBoardId("1");

    for (var i = 0; i < SwimLanelist.length; i++) {
        SwimLaneTest(SwimLanelist[i].name, SwimLanelist[i].swimLaneId, "1");
    }
}

function BindCardAdd() {

    $('[id^=CardAdd_]').click(function () {

        //  var Card = CardService.CardGetByCardId($(this).attr("CardId"))
        var BoardId = $(this).attr("BoardId");
        var SwimLaneId = $(this).attr("SwimLaneId");

        var Card = {
            boardId: BoardId,
            swimLaneId: SwimLaneId,
            cardId: "",
            name: $('#NewCardName_' + SwimLaneId).val(),
            description: "",
            priorityId: 1
        }

        var NewCard = CardService.CardSave(Card).responseJSON;
       
        AddCardTemplate(NewCard);
        FillPriorityCombo();

        //var Result = BoardService.BoardSave(Board).responseJSON;
        //// var  Result = JSON.parse( BoardService.BoardSave(Board));

        if (NewCard.isSuccess) {
            NotificationHelper.ShowSuccess('Kayıt işlemi başarıyla gerçekleşti!');
        }
        else {
            NotificationHelper.ShowError("Hata oluştu", NewCard.messageList);
        }


        //$('#CardKeys').attr("CardId", "");
        //$('#CardKeys').attr("Boardid", BoardId);
        //$('#CardKeys').attr("SwimLaneId", SwimLaneId);
        //FillPriorityCombo();
        //$('#CardName').val("");
        //$('#CardDescription').val("");
        
        
        //$('#modal-lg').modal('show');

    });

}

function FillPriorityCombo() {
    var data = [
        {
            id: 1,
            text: 'Low Priority'
        },
        {
            id: 2,
            text: 'Not Critical'
        },
        {
            id: 3,
            text: 'Normal Priority'
        },
        {
            id: 4,
            text: 'Expedite'
        }
    ];

    $('#CardPriority').select2({
        data: data
    });
}

function BindCardEdit() {
    $('[id^=CardEdit_]').click(function () {

        var Card = CardService.CardGetByCardId($(this).attr("CardId"))
        FillPriorityCombo();
        $('#CardKeys').attr("CardId", Card.CardId);
        $('#CardKeys').attr("BoardId", "1");
        $('#CardKeys').attr("SwimLaneId", $(this).attr("SwimLaneId"));
        $('#CardName').val(Card.Name);
        $('#CardDescription').val(Card.Description);
        $('#CardPriority').val(Card.PriorityId).trigger('change');
        $('#modal-lg').modal('show');

    });

}

function BindCardDeleteModal() {
    $('[id^=CardDelete_]').click(function () {

        $('#modal-default').attr("CardId", $(this).attr("CardId"));
        $('#modal-default').attr("SwimLaneId", $(this).attr("SwimLaneId"));
        $('#modal-default').modal('show');
    });
}

function BindCardDelete() {
    $('#btnCardDelete').click(function () {
        CardService.CardDelete($('#modal-default').attr("CardId"));
        $('#modal-default').modal('hide');
        $("#" + $('#modal-default').attr("CardId")).remove();

    });
}


function MoveCard(CardId, SwimLaneId) {
    CardService.CardMoveDifferentColumn(SwimLaneId, CardId);

    var kids = $("#" + SwimLaneId).children();

    for (var i = 0; i < kids.length; i++) {
        console.log(kids[i].id);
    }
}

function AddCardTemplate(SavedCard) {    

  
    var templateUrl = "https://localhost:5001/Components/Card/CardTemplate.html";


    $.get(templateUrl, function (data) {
        var template = Handlebars.compile(data);
        var html_data = template(SavedCard);
        $("#" + SavedCard.swimLaneId).append(html_data);
    });
    
    $(document).on('click', "#CardEdit_" + SavedCard.cardId, function () {
   // $("#CardEdit_" + SavedCard.cardId).bind("click", function () {
    

        $('#CardKeys').attr("CardId", SavedCard.cardId);
        $('#CardKeys').attr("BoardId", "1");
        $('#CardKeys').attr("SwimLaneId", $("#CardEdit_" + SavedCard.cardId).attr("SwimLaneId"));
        $('#CardName').val(SavedCard.name);
        $('#CardDescription').val(SavedCard.description);

        $('#modal-lg').modal('show');

    });

    $(document).on('click', "#CardDelete_" + SavedCard.cardId, function () {
      

        $('#modal-default').attr("CardId", SavedCard.cardId);
        $('#modal-default').attr("SwimLaneId",SavedCard.swimLaneId);
        $('#modal-default').modal('show');

    });
}

