$(function () {
    let kategori = $("#keamanan-kategori option:selected").text();
    let start_date = null;
    let end_date = null;

    $("#keamanan-kategori").on("change", function () {
        kategori = $("#keamanan-kategori option:selected").text();
    });

    if ($("#keamanan-chart").length) {
        start_date = $("#start-date").val();
        end_date = $("#end-date").val();

        $("#keamanan-submit-period").click(function () {
            start_date = $("#start-date").val();
            end_date = $("#end-date").val();
            keamanan_report(start_date, end_date, kategori);
        });

        setInterval(() => {
            keamanan_report(start_date, end_date, kategori);
        }, 60000);
    }
});

function keamanan_report(start_date, end_date, kategori) {
    if ($("#keamanan-chart").length) {
        // Set new default font family and font color to mimic Bootstrap's default styling
        (Chart.defaults.global.defaultFontFamily = "Nunito"),
            '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
        Chart.defaults.global.defaultFontColor = "#858796";

        // Get dates Name
        let url = $('meta[name="keamanan-report-route"]').attr("content");
        let dates = [];
        let counts = [];
        let data = [];
        let keamanan_table_str = ``;

        $.ajaxSetup({
            headers: {
                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
            },
        });

        $.ajax({
            url: url,
            data: {
                start_date: start_date,
                end_date: end_date,
                kategori: kategori,
            },
            type: "POST",
            success: function (report) {
                counts = report["counts"];
                dates = report["dates"];
                data = report["data"];

                $("#keamanan-chart").remove();
                $("#keamanan-table").remove();

                let canvas_str = `<canvas id="keamanan-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400" class="chartjs-render-monitor"></canvas>`;

                // Append new canvas
                $("#keamanan-chart-wrapper").append(canvas_str);

                // Jika ada data yang dihasilkan, maka tampilkan dalam bentuk table
                if (data.length > 0) {
                    keamanan_table_str = `
                       <table class="table table-hover" id="keamanan-table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Tanggal</th>
                                    <th>Jam</th>
                                    <th>Link Website</th>
                                    <th>Status Website</th>
                                    <th>View</th>
                                    <th>Nama Petugas</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                            `;

                    $.each(data, function (i, val) {
                        keamanan_table_str += `
                        <tr>
                            <td>${i + 1}</td>
                            <td>${val.tanggal}</td>
                            <td>${val.jam}</td>
                            <td>
                                <a  target="_blank"
                                    href="${val.link_website}">
                                    ${val.link_website}
                                </a>
                            </td>
                            <td>${val.status_website}</td>
                            <td>
                                <a  href=""
                                    class="detail-modal-link"
                                    data-toggle="modal"
                                    data-target=".detail-modal"
                                    data-capture="${val.capture}"
                                    data-keterangan="${val.keterangan}">
                                    Mirror
                                </a>
                            </td>
                            <td>${val.nama_petugas}</td>
                            <td>
                                <button
                                    ${val.is_tindak_lanjut ? "disabled" : ""}
                                    class="btn btn-sm ${
                                        val.is_tindak_lanjut
                                            ? "btn-white"
                                            : "btn-primary"
                                    }"
                                    id="tindak-lanjut"
                                    data-toggle="modal"
                                    data-id="${val.id}"
                                    data-target=".tindak-modal">
                                    Tindak Lanjut
                                </button>

                                <button
                                    class="btn btn-sm btn-danger"
                                    id="delete"
                                    data-id="${val.id}">
                                    Delete
                                </button>
                            </td>
                        </tr>
                        `;
                    });

                    keamanan_table_str += `</tbody></table>`;

                    $("#keamanan-table-wrapper").append(keamanan_table_str);
                } else {
                    keamanan_table_str = `
                        <h4 id="keamanan-table"
                            class="text-secondary text-center">
                            Data Tidak Ditemukan
                        </h4>
                    `;

                    $("#keamanan-table-wrapper").append(keamanan_table_str);
                }

                // Ketika tombol view diklik, ambil data capture dan keterangan untuk ditampilkan di modalbox
                $(".detail-modal-link").on("click", function () {
                    let capture = $(this).data("capture");
                    let keterangan = $(this).data("keterangan");
                    let path = $("#detail-capture").data("path") + capture;

                    // Ubah source gambar di ModalBox
                    $("#detail-capture").attr("src", path);

                    // Masukan keterangan ke ModalBox
                    $("#detail-keterangan").text(keterangan);
                });

                $("button#tindak-lanjut").on("click", function () {
                    $("#id_keamanan").val($(this).data("id"));
                });

                $("#cancel-tindak-lanjut").on("click", function () {
                    // Kosongkan form
                    $("#form-tindak-lanjut")[0].reset();

                    // Hapus preview gambar
                    $("#capture-preview").remove();
                    $("#capture-label").text("Browse image..");
                });

                // Area Chart Example
                var ctx = document.getElementById("keamanan-chart");
                var myLineChart = new Chart(ctx, {
                    type: "line",
                    data: {
                        labels: dates,
                        datasets: [
                            {
                                label: "Normal",
                                lineTension: 0,
                                backgroundColor: "rgba(78, 115, 223, 0.05)",
                                borderColor: "rgba(78, 115, 223, 1)",
                                pointRadius: 3,
                                pointBackgroundColor: "rgba(78, 115, 223, 1)",
                                pointBorderColor: "rgba(78, 115, 223, 1)",
                                pointHoverRadius: 3,
                                pointHoverBackgroundColor:
                                    "rgba(78, 115, 223, 1)",
                                pointHoverBorderColor: "rgba(78, 115, 223, 1)",
                                pointHitRadius: 10,
                                pointBorderWidth: 2,
                                data: counts["normal"],
                            },
                            {
                                label: "Deface",
                                lineTension: 0,
                                backgroundColor: "rgba(78, 115, 223, 0.05)",
                                borderColor: "rgba(255, 191, 0, 1)",
                                pointRadius: 3,
                                pointBackgroundColor: "rgba(255, 191, 0, 1)",
                                pointBorderColor: "rgba(255, 191, 0, 1)",
                                pointHoverRadius: 3,
                                pointHoverBackgroundColor:
                                    "rgba(255, 191, 0, 1)",
                                pointHoverBorderColor: "rgba(255, 191, 0, 1)",
                                pointHitRadius: 10,
                                pointBorderWidth: 2,
                                data: counts["deface"],
                            },
                        ],
                    },
                    options: {
                        maintainAspectRatio: false,
                        layout: {
                            padding: {
                                left: 10,
                                right: 25,
                                top: 25,
                                bottom: 0,
                            },
                        },
                        scales: {
                            xAxes: [
                                {
                                    time: {
                                        unit: "date",
                                    },
                                    gridLines: {
                                        display: false,
                                        drawBorder: false,
                                    },
                                    ticks: {
                                        maxTicksLimit: 7,
                                    },
                                },
                            ],
                            yAxes: [
                                {
                                    ticks: {
                                        maxTicksLimit: 5,
                                        padding: 10,
                                        // Include a dollar sign in the ticks
                                        callback: function (
                                            value,
                                            index,
                                            values
                                        ) {
                                            return value;
                                        },
                                    },
                                    gridLines: {
                                        color: "rgb(234, 236, 244)",
                                        zeroLineColor: "rgb(234, 236, 244)",
                                        drawBorder: false,
                                        borderDash: [2],
                                        zeroLineBorderDash: [2],
                                    },
                                },
                            ],
                        },
                        legend: {
                            display: false,
                        },
                        tooltips: {
                            backgroundColor: "rgb(255,255,255)",
                            bodyFontColor: "#858796",
                            titleMarginBottom: 10,
                            titleFontColor: "#6e707e",
                            titleFontSize: 14,
                            borderColor: "#dddfeb",
                            borderWidth: 1,
                            xPadding: 15,
                            yPadding: 15,
                            displayColors: false,
                            intersect: false,
                            mode: "index",
                            caretPadding: 10,
                            callbacks: {
                                label: function (tooltipItem, chart) {
                                    var datasetLabel =
                                        chart.datasets[tooltipItem.datasetIndex]
                                            .label || "";
                                    return (
                                        datasetLabel + ": " + tooltipItem.yLabel
                                    );
                                },
                            },
                        },
                    },
                });
            },
        });
    }
}
