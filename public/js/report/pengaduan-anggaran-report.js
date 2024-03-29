$(function () {
    // Default property
    let kategori = $("#anggaran-kategori option:selected").val();
    let startDate = null;
    let endDate = null;

    // Ketika kategori dirubah, ambil selected value nya
    $("#anggaran-kategori").on("change", function () {
        kategori = $("#anggaran-kategori option:selected").val();
    });

    if ($("#anggaran-chart").length) {
        // Default property
        startDate = $("#start-date").val();
        endDate = $("#end-date").val();

        $("#anggaran-submit-period").click(function () {
            startDate = $("#start-date").val();
            endDate = $("#end-date").val();
            anggaranReport(startDate, endDate, kategori);
        });

        setInterval(() => {
            anggaranReport(startDate, endDate, kategori);
        }, 60000);
    }
});

function anggaranReport(startDate, endDate, kategori) {
    if ($("#anggaran-chart").length) {
        let url = $('meta[name="anggaran-report-route"]').attr("content");
        let dates = [];
        let counts = [];
        let data = [];
        let anggaranTableStr = ``;

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
        $("#anggaran-table").remove();

        // Jika ada data yang dihasilkan, maka tampilkan dalam bentuk table
        if (data.length > 0) {
            anggaranTableStr = `
            <table class="table table-hover table-sm" id="anggaran-table">
                <thead>
                    <tr>
                        <th>
                            <p>No.</p>
                        </th>
                        <th class="w-custom-sm">
                            <p>Tanggal Pengaduan</p>
                        </th>
                        <th class="w-custom-sm">
                            <p>Nama Pelapor</p>
                        </th>
                        <th class="w-custom-sm">
                            <p>Topik</p>
                        </th>
                        <th class="w-custom-sm">
                            <p>Kategori</p>
                        </th>
                        <th>
                            <p>Nama Instansi / Perangkat Daerah</p>
                        </th>
                        <th>
                            <p>Nama Petugas</p>
                        </th>
                    </tr>
                </thead>
                <tbody>
                `;

            $.each(data, function (i, val) {
                let date = new Date(val.tanggal);
                tanggal = moment(date).format("DD MMMM YYYY");
                anggaranTableStr += `
                    <tr>
                        <td>${i + 1}</td>
                        <td>${tanggal}</td>
                        <td>${val.nama_pelapor}</td>
                        <td>${val.topik}</td>
                        <td>${val.kategori}</td>
                        <td>${val.nama_pd}</td>
                        <td>${val.name}</td>
                    </tr>
                    `;
            });

            anggaranTableStr += `</tbody></table>`;
        } else {
            anggaranTableStr = `
                <h4 id="anggaran-table" class="text-secondary text-center">Data Tidak Ditemukan</h4>
                `;
        }

        $("#anggaran-table-wrapper").append(anggaranTableStr);
    }

    function loadChart(dates, counts) {
        $("#anggaran-chart").remove();

        let canvasStr = `<canvas id="anggaran-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400" class="chartjs-render-monitor"></canvas>`;

        // Append new canvas
        $("#anggaran-chart-wrapper").append(canvasStr);

        var ctx = document.getElementById("anggaran-chart");
        var myLineChart = new Chart(ctx, {
            type: "line",
            data: {
                labels: dates,
                datasets: [
                    {
                        label: "Aduan",
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
