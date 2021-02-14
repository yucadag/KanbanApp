var SettingsHelper = (function () {

    var GetBoardSwimLineList = function () {

        var BoardList = BoardService.BoardGetBoardList();

        var viewData = {
            boards: BoardList
        };

        var templateUrl = "https://localhost:5001/Components/Board/BoardList/BoardListTemplate.html";

        $.get(templateUrl, function (data) {
            var template = Handlebars.compile(data);
            var html_data = template(viewData);
            $("#BoardContent").empty();
            $("#BoardContent").append(html_data);
        }).done(function () {
            BoardView.BoardListBindBoardEdit();
            BoardView.BoardBoardUpdate();
        });


    };

    var BindBoardEdit = function () {

        $('[id^=BoardEdit_]').click(function () {


            //  var BoardId = $('#BoardKeys').attr("BoardId");
            var BoardId = $(this).attr("BoardId");
            $('#BoardKeys').attr("Boardid", BoardId);
            var Board = BoardService.BoardGetByBoardId(BoardId);


            $('#BoardName').val(Board.name);
            $('#BoardDescription').val(Board.description);


            $('#modal-lg').modal('show');

        });

    };

    var BoardUpdate = function () {

        $("#SaveBoard").click(function () {

            var Board = {
                "boardId": $('#BoardKeys').attr("BoardId"),
                "name": $('#BoardName').val(),
                "description": $('#BoardDescription').val()
            };

            var Result = BoardService.BoardUpdate(Board).responseJSON;


            $('#modal-lg').modal('hide');
            if (Result.isSuccess) {
                NotificationHelper.ShowSuccess('Kayıt işlemi başarıyla gerçekleşti!');
                BoardView.BoardGetBoardListView();
            }
            else {
                NotificationHelper.ShowError("Hata oluştu", Result.messageList);
            }
        });

    };



    return {
        BoardGetBoardListView: GetBoardListView,
        BoardListBindBoardEdit: BindBoardEdit,
        BoardBoardUpdate: BoardUpdate

    }
})();

