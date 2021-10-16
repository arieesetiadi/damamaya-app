$(function () {
    // Default property
    let kategori = $("#analisa-kategori option:selected").val();
    let startDate = null;
    let endDate = null;

    // Ketika kategori dirubah, ambil selected value nya
    $("#analisa-kategori").on("change", function () {
        kategori = $("#analisa-kategori option:selected").val();
    });

    if ($("#analisa-chart").length) {
        startDate = $("#start-date").val();
        endDate = $("#end-date").val();

        $("#analisa-submit-period").click(function () {
            startDate = $("#start-date").val();
            endDate = $("#end-date").val();
            analisaReport(startDate, endDate, kategori);
        });

        setInterval(() => {
            analisaReport(startDate, endDate, kategori);
        }, 60000);
    }
});

function analisaReport(startDate, endDate, kategori) {
    if ($("#analisa-chart").length) {
        let url = $('meta[name="analisa-report-route"]').attr("content");
        let dates = [];
        let counts = [];
        let data = [];
        let analisaTableStr = ``;

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
                kategori: kategori,
            },
            type: "POST",
            success: function (report) {
                counts = report["counts"];
                dates = report["dates"];
                data = report["data"];

                // Tampilkan grafik/chart
                loadChart(dates, counts);

                // Tampilkan semua data pada table
                loadDataTable(data);
            },
        });
    }

    function loadDataTable(data) {
        $("#analisa-table").remove();

        // Jika ada data yang dihasilkan, maka tampilkan dalam bentuk table
        if (data.length > 0) {
            analisaTableStr = `
            <table class="table table-bordered" id="analisa-table" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Tanggal</th>
                        <th>Isu Lokal</th>
                        <th>Isu Nasional</th>
                        <th>Kategori</th>
                        <th>Nama Petugas</th>
                    </tr>
                </thead>
                <tbody>
                `;

            $.each(data, function (i, val) {
                let date = new Date(val.tanggal);
                tanggal = moment(date).format("DD MMMM YYYY");
                analisaTableStr += `
                    <tr>
                        <td>${i + 1}</td>
                        <td>${tanggal}</td>
                        <td>${val.isu_lokal}</td>
                        <td>${val.isu_nasional}</td>
                        <td>${val.kategori}</td>
                        <td>${val.name}</td>
                    </tr>
                `;
            });

            analisaTableStr += `</tbody></table>`;
        } else {
            analisaTableStr = `
                <h4 id="analisa-table" class="text-secondary text-center">Data Tidak Ditemukan</h4>
            `;
        }

        $("#analisa-table-wrapper").append(analisaTableStr);
    }

    function loadChart(dates, counts) {
        $("#analisa-chart").remove();

        let canvasStr = `<canvas id="analisa-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400" class="chartjs-render-monitor"></canvas>`;

        // Append new canvas
        $("#analisa-chart-wrapper").append(canvasStr);

        var ctx = document.getElementById("analisa-chart");
        var myLineChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: dates,
                datasets: [
                    {
                        label: "Issue",
                        lineTension: 0,
                        backgroundColor: "rgba(78, 115, 223, 0.05)",
                        borderColor: "rgba(78, 115, 223, 1)",
                        pointRadius: 3,
                        pointBackgroundColor: "rgba(78, 115, 223, 1)",
                        pointBorderColor: "rgba(78, 115, 223, 1)",
                        pointHoverRadius: 3,
                        pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
                        pointHoverBorderColor: "rgba(78, 115, 223, 1)",
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
}
