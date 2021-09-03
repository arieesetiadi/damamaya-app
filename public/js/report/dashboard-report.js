$(function () {
    startDate = $("#start-date").val();
    endDate = $("#end-date").val();

    if ($("#pro-chart").length) {
        proReport(startDate, endDate);
    }

    if ($("#anggaran-chart").length) {
        anggaranReport(startDate, endDate);
    }

    if ($("#analisa-chart").length) {
        analisaReport(startDate, endDate);
    }

    if ($("#keamanan-chart").length) {
        keamananReport(startDate, endDate);
    }

    if ($("#tik-chart").length) {
        webTidakBisaDiaksesReport(startDate, endDate);
    }
});
