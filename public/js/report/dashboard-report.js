$(function () {
    startDate = $("#start-date").val();
    endDate = $("#end-date").val();

    if ($("#pro-chart").length) {
        proReport(startDate, endDate);
    }

    if ($("#anggaran-chart").length) {
        anggaran_report(startDate, endDate);
    }

    if ($("#analisa-chart").length) {
        analisa_report(startDate, endDate);
    }

    if ($("#keamanan-chart").length) {
        keamananReport(startDate, endDate);
    }

    if ($("#tik-chart").length) {
        webTidakBisaDiaksesReport(startDate, endDate);
    }
});
