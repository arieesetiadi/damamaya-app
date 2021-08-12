$(function () {
    start_date = $("#start_date").val();
    end_date = $("#end_date").val();

    if ($("#pro-chart").length) {
        pro_report(start_date, end_date);
    }

    if ($("#anggaran-chart").length) {
        anggaran_report(start_date, end_date);
    }

    if ($("#analisa-chart").length) {
        analisa_report(start_date, end_date, "Semua");
    }

    if ($("#keamanan-chart").length) {
        keamanan_report(start_date, end_date);
    }
});
