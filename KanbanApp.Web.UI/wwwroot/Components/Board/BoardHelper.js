function BindSave() {
    $('#btnSave').click(function () {


        var Board = {
            boardId: "",
            ownerId: "",
            name: $('#txtBoardName').val(),
            description: $('#txtBoardDescription').val()
        }


        var Result = BoardService.BoardSave(Board).responseJSON;
     // var  Result = JSON.parse( BoardService.BoardSave(Board));
  
        if (Result.isSuccess) {
            NotificationHelper.ShowSuccess('Kayıt işlemi başarıyla gerçekleşti!');
        }
        else {
            NotificationHelper.ShowError("Hata oluştu", Result.messageList);
        }


    });
}
