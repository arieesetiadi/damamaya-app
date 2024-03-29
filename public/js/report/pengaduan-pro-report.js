$(function () {
    // Default property
    let kategori = $("#pro-kategori option:selected").val();
    let startDate = null;
    let endDate = null;

    // Ketika kategori dirubah, ambil selected value nya
    $("#pro-kategori").on("change", function () {
        kategori = $("#pro-kategori option:selected").val();
    });

    if ($("#pro-chart").length) {
        startDate = $("#start-date").val();
        endDate = $("#end-date").val();

        $("#pro-submit-period").click(function () {
            startDate = $("#start-date").val();
            endDate = $("#end-date").val();
            proReport(startDate, endDate, kategori);
        });

        setInterval(() => {
            proReport(startDate, endDate, kategori);
        }, 60000);
    }
});

function proReport(startDate, endDate, kategori) {
    if ($("#pro-chart").length) {
        let url = $('meta[name="pro-report-route"]').attr("content");
        let csrf = document.getElementsByName("csrf-token")[0].content;
        let xhr = new XMLHttpRequest();
        let formData = new FormData();

        let dates = [];
        let counts = [];
        let data = [];
        let proTableStr = ``;

        // var res = ajax(url, "POST", {
        //     startDate: startDate,
        //     endDate: endDate,
        //     kategori: kategori,
        // });

        // let res = ajax("/test-api", "POST", { name: "Tuarie", umur: 20 });
        // res.then((res) => console.log(res));

        // console.log(fetch("/test-api"));

        // console.log(res.then((r) => r));

        // for (let i in res) {
        //     console.log(i, res[i]);
        // }

        // let start, end, interval;

        // Fetch Competition
        // AXIOS
        // start = new Date().getTime();
        // axios
        //     .post("/test-api", {
        //         name: "Tuarie",
        //         umur: 20,
        //     })
        //     .then(function (res) {
        //         end = new Date().getTime();
        //         interval = end - start;
        //         console.log("AXIOS = ", interval);
        //     });

        // FETCH
        // start = new Date().getTime();
        // let res = fetch("/test-api", {
        //     method: "POST",
        //     headers: {
        //         "Content-Type": "application/json",
        //         "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        //     },
        //     body: JSON.stringify({
        //         name: "Tuarie",
        //         umur: 20,
        //     }),
        // });

        // res.then((response) => response.json()).then(function (data) {
        //     end = new Date().getTime();
        //     interval = end - start;
        //     console.log("FETCH = ", interval);
        // });

        // JQUERY
        // start = new Date().getTime();
        // $.ajaxSetup({
        //     headers: {
        //         "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        //     },
        // });

        // $.ajax({
        //     url: "/test-api",
        //     data: {
        //         name: "Tuarie",
        //         umur: 20,
        //     },
        //     type: "POST",
        //     success: function (report) {
        //         end = new Date().getTime();
        //         interval = end - start;
        //         console.log("JQUERY = ", interval);
        //     },
        // });

        // $.ajaxSetup({
        //     headers: {
        //         "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        //     },
        // });

        $.ajax({
            url: url,
            data: {
                startDate: startDate,
                endDate: endDate,
                kategori: kategori,
            },
            type: "POST",
            success: function (report) {
                dates = report["dates"];
                counts = report["counts"];
                data = report["data"];

                // Tampilkan grafik/chart
                loadChart(dates, counts);

                // Tampilkan semua data pada table
                loadDataTable(data);
            },
        });
    }
}

function loadDataTable(data) {
    $("#pro-table").remove();

    if (data.length > 0) {
        proTableStr = `
        <table class="table table-hover table-sm" id="pro-table">
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
            proTableStr += `
                <tr>
                    <td>
                        <p>${i + 1}</p>
                    </td>
                    <td>
                        <p>${tanggal}</p>
                    </td>
                    <td>
                        <p>${val.nama_pelapor}</p>
                    </td>
                    <td>
                        <p>${val.topik}</p>
                    </td>
                    <td>
                        <p>${val.kategori}</p>
                    </td>
                    <td>
                        <p>${val.nama_pd}</p>
                    </td>
                    <td>
                        <p>${val.name}</p>
                    </td>
                </tr>
            `;
        });

        proTableStr += `</tbody></table>`;

        $("#pro-table-wrapper").append(proTableStr);
    } else {
        proTableStr = `
            <h4 id="pro-table" class="text-secondary text-center">Data Tidak Ditemukan</h4>
        `;

        $("#pro-table-wrapper").append(proTableStr);
    }
}

function loadChart(dates, counts) {
    $("#pro-chart").remove();

    let canvasStr = `<canvas id="pro-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400" class="chartjs-render-monitor"></canvas>`;

    // Append new canvas
    $("#pro-chart-wrapper").append(canvasStr);

    var ctx = document.getElementById("pro-chart");
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
                            chart.datasets[tooltipItem.datasetIndex].label ||
                            "";
                        return datasetLabel + ": " + tooltipItem.yLabel;
                    },
                },
            },
        },
    });
}
