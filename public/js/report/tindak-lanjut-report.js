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
    $("button.delete-tindak-lanjut").on("click", function () {
        $("#form-delete input#id").val($(this).data("id"));
    });

    // Ketika tombol edit ditekan, munculkan form update
    $("button.edit-tindak-lanjut").on("click", function () {
        let id = $(this).data("id");
        let url = $('meta[name="keamanan-informasi-get"]').attr("content");

        // Ambil data tindak lanjut berdasarkan ID
        $.ajax({
            url: url,
            data: {
                id: id,
            },
            type: "GET",
            success: function (data) {
                $("#capture-preview").remove();

                $("#form-edit-tindak-lanjut input#id").val(id);

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

    // Ketika tombol 'Cancel' pada Modal diklik
    $("button#cancel-tindak-lanjut").on("click", function () {
        // Reset isi form
        $("#form-edit-tindak-lanjut")[0].reset();

        // Hapus preview gambar
        $("#capture-preview").remove();
        $("#capture-label").text("Browse image..");
    });
});
