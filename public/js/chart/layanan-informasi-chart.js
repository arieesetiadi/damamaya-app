// $(function () {
//     if ($("#informasi-chart").length) {
//         // Show default chart
//         informasi_chart();

//         setInterval(() => {
//             informasi_chart();
//         }, 60000);
//     }
// });

// function informasi_chart() {
//     $("#informasi-chart").remove();

//     let canvas =
//         '<canvas id="informasi-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400" class="chartjs-render-monitor"></canvas>';

//     // Append new canvas
//     $("#informasi-chart-area").append(canvas);

//     if ($("#informasi-chart").length) {
//         // Set new default font family and font color to mimic Bootstrap's default styling
//         (Chart.defaults.global.defaultFontFamily = "Nunito"),
//             '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
//         Chart.defaults.global.defaultFontColor = "#858796";

//         function number_format(number, decimals, dec_point, thousands_sep) {
//             // *     example: number_format(1234.56, 2, ',', ' ');
//             // *     return: '1 234,56'
//             number = (number + "").replace(",", "").replace(" ", "");
//             var n = !isFinite(+number) ? 0 : +number,
//                 prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
//                 sep =
//                     typeof thousands_sep === "undefined" ? "," : thousands_sep,
//                 dec = typeof dec_point === "undefined" ? "." : dec_point,
//                 s = "",
//                 toFixedFix = function (n, prec) {
//                     var k = Math.pow(10, prec);
//                     return "" + Math.round(n * k) / k;
//                 };
//             // Fix for IE parseFloat(0.55).toFixed(0) = 0;
//             s = (prec ? toFixedFix(n, prec) : "" + Math.round(n)).split(".");
//             if (s[0].length > 3) {
//                 s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
//             }
//             if ((s[1] || "").length < prec) {
//                 s[1] = s[1] || "";
//                 s[1] += new Array(prec - s[1].length + 1).join("0");
//             }
//             return s.join(dec);
//         }

//         // Get Days Name
//         let url = $("#chart-card-informasi").data("route");
//         let instansi = [];
//         let tahun_update = [];
//         let tahun_berjalan = [];

//         $.ajaxSetup({
//             headers: {
//                 "X-CSRF-TOKEN": $("#_token").val(),
//             },
//         });

//         $.ajax({
//             url: url,
//             type: "POST",
//             async: false,
//             success: function (chart) {
//                 instansi = chart["instansi"];
//                 // tahun_update = chart["tahun_update"];
//                 tahun_berjalan = chart["tahun_berjalan"];
//                 for (let i = 0; i < chart["tahun_update"].length; i++) {
//                     th = chart["tahun_update"][i];
//                     tahun_update[i] = th;
//                 }

//                 console.log(instansi);
//                 console.log(tahun_update);
//             },
//         });

//         // Area Chart Example
//         var ctx = document.getElementById("informasi-chart");
//         var myLineChart = new Chart(ctx, {
//             type: "line",
//             data: {
//                 labels: instansi,
//                 datasets: [
//                     {
//                         label: "",
//                         lineTension: 0.3,
//                         backgroundColor: "rgba(78, 115, 223, 0.05)",
//                         borderColor: "rgba(78, 115, 223, 1)",
//                         pointRadius: 3,
//                         pointBackgroundColor: "rgba(78, 115, 223, 1)",
//                         pointBorderColor: "rgba(78, 115, 223, 1)",
//                         pointHoverRadius: 3,
//                         pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
//                         pointHoverBorderColor: "rgba(78, 115, 223, 1)",
//                         pointHitRadius: 10,
//                         pointBorderWidth: 2,
//                         data: tahun_berjalan,
//                     },
//                 ],
//             },
//             options: {
//                 maintainAspectRatio: false,
//                 layout: {
//                     padding: {
//                         left: 10,
//                         right: 25,
//                         top: 25,
//                         bottom: 0,
//                     },
//                 },
//                 scales: {
//                     xAxes: [
//                         {
//                             time: {
//                                 unit: "date",
//                             },
//                             gridLines: {
//                                 display: false,
//                                 drawBorder: false,
//                             },
//                             ticks: {
//                                 maxTicksLimit: 7,
//                             },
//                         },
//                     ],
//                     yAxes: [
//                         {
//                             ticks: {
//                                 maxTicksLimit: 5,
//                                 padding: 10,
//                                 // Include a dollar sign in the ticks
//                                 callback: function (value, index, values) {
//                                     return "" + number_format(value);
//                                 },
//                             },
//                             gridLines: {
//                                 color: "rgb(234, 236, 244)",
//                                 zeroLineColor: "rgb(234, 236, 244)",
//                                 drawBorder: false,
//                                 borderDash: [2],
//                                 zeroLineBorderDash: [2],
//                             },
//                         },
//                     ],
//                 },
//                 legend: {
//                     display: false,
//                 },
//                 tooltips: {
//                     backgroundColor: "rgb(255,255,255)",
//                     bodyFontColor: "#858796",
//                     titleMarginBottom: 10,
//                     titleFontColor: "#6e707e",
//                     titleFontSize: 14,
//                     borderColor: "#dddfeb",
//                     borderWidth: 1,
//                     xPadding: 15,
//                     yPadding: 15,
//                     displayColors: false,
//                     intersect: false,
//                     mode: "index",
//                     caretPadding: 10,
//                     callbacks: {
//                         label: function (tooltipItem, chart) {
//                             var datasetLabel =
//                                 chart.datasets[tooltipItem.datasetIndex]
//                                     .label || "";
//                             return (
//                                 datasetLabel +
//                                 ": " +
//                                 number_format(tooltipItem.yLabel)
//                             );
//                         },
//                     },
//                 },
//             },
//         });
//     }
// }
