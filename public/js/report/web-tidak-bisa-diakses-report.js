$(function () {
    let startDate = null;
    let endDate = null;

    if ($("#tik-chart").length) {
        startDate = $("#start-date").val();
        endDate = $("#end-date").val();

        $("#tik-submit-period").click(function () {
            startDate = $("#start-date").val();
            endDate = $("#end-date").val();
            webTidakBisaDiaksesReport(startDate, endDate);
        });

        setInterval(() => {
            webTidakBisaDiaksesReport(startDate, endDate);
        }, 60000);
    }
});

function webTidakBisaDiaksesReport(startDate, endDate) {
    if ($("#tik-chart").length) {
        let url = $('meta[name="web-tidak-bisa-diakses-report-route"]').attr(
            "content"
        );
        let dates = [];
        let counts = [];
        let data = [];
        let tikTableStr = ``;

        $.ajaxSetup({
            headers: {
                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
            },
        });

        $.ajax({
            url: url,
            data: {
                startDate: startDate,
                endDate: endDate,
            },
            type: "POST",
            success: function (report) {
                counts = report["counts"];
                dates = report["dates"];
                data = report["data"];
                userRole = $("meta[name='user-role']").attr("content");

                // Tampilkan grafik/chart
                loadChart(dates, counts);

                // Tampilkan semua data pada table
                loadDataTable(data, userRole);

                // Load semua Events
                loadEvents();
            },
        });
    }

    function loadDataTable(data, userRole) {
        $("#tik-table").remove();

        if (data.length > 0) {
            tikTableStr = `
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

            if (userRole == 1 || userRole == 2) {
                tikTableStr += `<th>Aksi</th>`;
            }

            tikTableStr += `</tr></thead><tbody>`;

            $.each(data, function (i, val) {
                let date = new Date(val.tanggal);
                tanggal = moment(date).format("DD MMMM YYYY");
                tikTableStr += `
                    <tr>
                        <td>${i + 1}</td>
                        <td>${tanggal}</td>
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

                if (userRole == 1 || userRole == 2) {
                    if (val.is_tindak_lanjut) {
                        tikTableStr += `
                        <button
                            disabled
                            class="btn btn-sm btn-white"
                            id="tindak-lanjut">
                            Tindak
                        </button>`;
                    } else {
                        tikTableStr += `
                        <button
                            class="btn btn-sm btn-primary"
                            id="tindak-lanjut"
                            data-toggle="modal"
                            data-id="${val.id}"
                            data-target=".tindak-modal">
                            Tindak
                        </button>`;
                    }

                    tikTableStr += `
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

                tikTableStr += `</tr>`;
            });

            tikTableStr += `</tbody></table>`;
        } else {
            tikTableStr = `
                <h4 id="tik-table" class="text-secondary text-center">Data Tidak Ditemukan</h4>
            `;
        }

        $("#tik-table-wrapper").append(tikTableStr);
    }

    function loadChart(dates, counts) {
        $("#tik-chart").remove();

        let canvasStr = `<canvas id="tik-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400" class="chartjs-render-monitor"></canvas>`;

        // Append new canvas
        $("#tik-chart-wrapper").append(canvasStr);

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
                        pointHoverBackgroundColor: "rgba(0, 0, 0, 0.50)",
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
                                callback: function (value, index, values) {
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
                            return datasetLabel + ": " + tooltipItem.yLabel;
                        },
                    },
                },
            },
        });
    }

    function loadEvents() {
        // Ketika tombol 'View' diklik
        // Ambil data capture dan keterangan untuk ditampilkan di modalbox
        $(".detail-modal-link").on("click", function () {
            let capture = $(this).data("capture");
            let keterangan = $(this).data("keterangan");
            let path = $("#detail-capture").data("path") + capture;

            // Ubah source gambar di ModalBox
            $("#detail-capture").attr("src", path);

            // Masukan keterangan ke ModalBox
            $("#detail-keterangan").text(keterangan);
        });

        // Ketika tombol 'Tindak' diklik
        // Kirim id keamanan informasi ke form tindak lanjut
        $("button#tindak-lanjut").on("click", function () {
            $("#id-keamanan").val($(this).data("id"));
        });

        // Ketika tombol 'Cancel' pada Modal diklik
        $("button#cancel-tindak-lanjut").on("click", function () {
            // Reset isi form
            $("#form-tindak-lanjut")[0].reset();

            // Hapus preview gambar
            $("#capture-preview").remove();
            $("#capture-label").text("Browse image..");
        });

        // Jika tombol 'Delete' ditekan
        // Kirim id dari data yang akan dihapus
        $("button#delete-keamanan").on("click", function () {
            $("#form-delete input#id").val($(this).data("id"));
        });
    }
}
