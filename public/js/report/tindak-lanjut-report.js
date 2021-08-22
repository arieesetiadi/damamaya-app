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
});
