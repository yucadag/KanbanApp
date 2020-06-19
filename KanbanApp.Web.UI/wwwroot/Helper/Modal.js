
function OpenPartialViewModal(PartialViewPath,ModalDivId)
{


            
            var url = PartialViewPath;
            //bu urlimizi post et
            $.post(url, function (data) { })
                //eğer işlemimiz başarılı bir şekilde gerçekleşirse
            .done(function (data) {
                //gelen datayı .modal-body mizin içerise html olarak ekle
                $("#"+ModalDivId+" .modal-body").html(data);
                //sonra da modalimizi göster
                $("#"+ModalDivId).modal("show");
            })
                //eğer işlem başarısız olursa
            .fail(function () {
                //modalımızın bodysine Error! yaz
                $("#"+ModalDivId+" .modal-body").text("Error!!");
                //sonra da modalimizi göster
                $("#"+ModalDivId).modal("show");
            })



    }