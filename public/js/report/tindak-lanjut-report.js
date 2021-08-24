$(function () {
    // Ketika tombol view diklik, ambil data capture dan keterangan untuk ditampilkan di modalbox
    $("a.detail-modal-link").on("click", function () {
        let capture = $(this).data("capture");
        let keterangan = $(this).data("keterangan");
        let path = $("#detail-capture").data("path") + capture;

        // Ubah source gambar di ModalBox
        $("#detail-capture").attr("src", path);

        // Masukan keterangan ke ModalBox
        $("#detail-keterangan").text(keterangan);
    });

    // Jika tombol delete ditekan, kirim id untuk proses penghapusan
    $("button#delete-tindak-lanjut").on("click", function () {
        $("#form-delete").attr(
            "action",
            "/tindak-lanjut/" + $(this).data("id")
        );
    });

    $("#edit-tindak-lanjut").on("click", function () {
        let id = $(this).data("id");
        let url = $('meta[name="tindak-lanjut-get"]').attr("content");

        // Ambil data tindak lanjut berdasarkan ID
        $.ajax({
            url: url,
            data: {
                id: id,
            },
            type: "GET",
            success: function (data) {
                $("#capture-preview").remove();

                // Ubah url action pada form
                let form_action = "/tindak-lanjut/" + id;

                $("#form-edit-tindak-lanjut").attr("action", form_action);

                // Masukan data kedalam modal edit tindak lanjut
                $("#tanggal").val(data.tanggal);
                $("#jam").val(data.jam);
                $("#keterangan").val(data.keterangan);

                // // Tampilkan preview gambar
                let img_url =
                    $("#capture-preview-wrapper").data("path") + data.capture;

                let preview_str = `
                <div id="capture-preview" class="d-flex justify-content-center pt-2">
                    <img class="w-100 rounded" src="${img_url}" alt="Capture">
                </div>`;

                $("#capture-preview-wrapper").append(preview_str);
                $("#capture-label").text(data.capture);
            },
        });
    });
});
