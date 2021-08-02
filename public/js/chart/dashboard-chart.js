$(function () {
    start_date = $("#start_date").val();
    end_date = $("#end_date").val();

    if ($("#pro-chart").length) {
        pro_chart(start_date, end_date);
    }

    if ($("#anggaran-chart").length) {
        anggaran_chart(start_date, end_date);
    }
});
