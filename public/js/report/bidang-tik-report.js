$(function () {
    let start_date = null;
    let end_date = null;

    if ($("#tik-chart").length) {
        start_date = $("#start-date").val();
        end_date = $("#end-date").val();

        $("#tik-submit-period").click(function () {
            start_date = $("#start-date").val();
            end_date = $("#end-date").val();
            tik_report(start_date, end_date);
        });

        setInterval(() => {
            tik_report(start_date, end_date);
        }, 60000);
    }
});

function tik_report(start_date, end_date) {
    if ($("#tik-chart").length) {
        // Set new default font family and font color to mimic Bootstrap's default styling
        (Chart.defaults.global.defaultFontFamily = "Nunito"),
            '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
        Chart.defaults.global.defaultFontColor = "#858796";

        // Get dates Name
        let url = $('meta[name="tik-report-route"]').attr("content");
        let dates = [];
        let counts = [];
        let data = [];
        let tik_table_str = ``;

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
            },
            type: "POST",
            success: function (report) {
                counts = report["counts"];
                dates = report["dates"];
                data = report["data"];
                user_role = $("meta[name='user-role']").attr("content");

                $("#tik-chart").remove();
                $("#tik-table").remove();

                let canvas_str = `<canvas id="tik-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400" class="chartjs-render-monitor"></canvas>`;

                // Append new canvas
                $("#tik-chart-wrapper").append(canvas_str);

                // Jika ada data yang dihasilkan, maka tampilkan dalam bentuk table
                if (data.length > 0) {
                    tik_table_str = `
                       <table class="table table-hover" id="tik-table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Tanggal</th>
                                    <th>Jam</th>
                                    <th>Link Website</th>
                                    <th>Status Website</th>
                                    <th>View</th>
                                    <th>Nama Petugas</th>
                            `;

                    if (user_role == 1 || user_role == 2) {
                        tik_table_str += `<th>Aksi</th>`;
                    }

                    tik_table_str += `</tr></thead><tbody>`;

                    $.each(data, function (i, val) {
                        tik_table_str += `
                            <tr>
                                <td>${i + 1}</td>
                                <td>${val.tanggal}</td>
                                <td>${val.jam}</td>
                                <td>
                                    <a
                                        target="_blank"
                                        href="${val.link_website}">
                                        ${val.link_website}
                                    </a>
                                </td>
                                <td>${val.status_website}</td>
                                <td>
                                    <a
                                        href=""
                                        class="detail-modal-link" data-toggle="modal"
                                        data-target=".detail-modal"
                                        data-capture="${val.capture}" 
                                        data-keterangan="${val.keterangan}">
                                        Mirror
                                    </a>
                                </td>
                                <td>${val.name}</td>
                                <td class="d-flex justify-content-end">`;

                        if (user_role == 1 || user_role == 2) {
                            if (val.is_tindak_lanjut) {
                                tik_table_str += `
                                    <button
                                        class="d-none btn btn-sm btn-white"
                                        id="tindak-lanjut">
                                        Tindak
                                    </button>`;
                            } else {
                                tik_table_str += `
                                    <button
                                        class="btn btn-sm btn-primary"
                                        id="tindak-lanjut"
                                        data-toggle="modal"
                                        data-id="${val.id}"
                                        data-target=".tindak-modal">
                                        Tindak
                                    </button>`;
                            }

                            tik_table_str += `
                                <button
                                        class="btn btn-sm btn-danger ml-2"
                                        id="delete-keamanan"
                                        data-toggle="modal"
                                        data-id="${val.id}"
                                        data-target="#delete-modal">
                                        Delete
                                    </button>
                                </td>
                            </tr>`;
                        }

                        tik_table_str += `</tr>`;
                    });

                    tik_table_str += `</tbody></table>`;

                    $("#tik-table-wrapper").append(tik_table_str);
                } else {
                    tik_table_str = `
                        <h4 id="tik-table" class="text-secondary text-center">Data Tidak Ditemukan</h4>
                    `;

                    $("#tik-table-wrapper").append(tik_table_str);
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

                // Ketika tombol tindak lanjut diklik, kirim id keamanan informasi ke form tindak lanjut
                $("button#tindak-lanjut").on("click", function () {
                    $("#id-keamanan").val($(this).data("id"));
                });

                // Ketika tombol cancel pada modal tindak lanjut ditekan
                $("button#cancel-tindak-lanjut").on("click", function () {
                    // Reset isi form
                    $("#form-tindak-lanjut")[0].reset();

                    // Hapus preview gambar
                    $("#capture-preview").remove();
                    $("#capture-label").text("Browse image..");
                });

                // Jika tombol delete ditekan, kirim id untuk proses penghapusan
                $("button#delete-keamanan").on("click", function () {
                    $("#form-delete input#id").val($(this).data("id"));
                });

                // Area Chart Example
                var ctx = document.getElementById("tik-chart");
                var myLineChart = new Chart(ctx, {
                    type: "line",
                    data: {
                        labels: dates,
                        datasets: [
                            {
                                label: "Tidak Bisa Diakses",
                                lineTension: 0,
                                backgroundColor: "rgba(78, 115, 223, 0.05)",
                                borderColor: "rgba(0, 0, 0, 0.50)",
                                pointRadius: 3,
                                pointBackgroundColor: "rgba(0, 0, 0, 0.50)",
                                pointBorderColor: "rgba(0, 0, 0, 0.50)",
                                pointHoverRadius: 3,
                                pointHoverBackgroundColor:
                                    "rgba(0, 0, 0, 0.50)",
                                pointHoverBorderColor: "rgba(0, 0, 0, 0.50)",
                                pointHitRadius: 10,
                                pointBorderWidth: 2,
                                data: counts,
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
