$(function () {
    start_date = $("#start_date").val();
    end_date = $("#end_date").val();

    if ($("#pro-chart").length) {
        pro_chart(start_date, end_date);
    }

    if ($("#anggaran-chart").length) {
        anggaran_chart(start_date, end_date);
    }

    if ($("#keamanan-chart").length) {
        keamanan_chart(start_date, end_date);
    }

    if ($("#analisa-chart").length) {
        analisa_chart(start_date, end_date, "Semua");
    }
});
