$(function () {
    let kategori = $("#keamanan-kategori option:selected").text();
    let startDate = null;
    let endDate = null;
    let monthCounter = 0;

    tindakLanjutReport();

    $("#keamanan-kategori").on("change", function () {
        kategori = $("#keamanan-kategori option:selected").text();
    });

    if ($("#keamanan-chart").length) {
        startDate = $("#start-date").val();
        endDate = $("#end-date").val();

        $("#keamanan-submit-period").click(function () {
            startDate = $("#start-date").val();
            endDate = $("#end-date").val();
            keamananReport(startDate, endDate, kategori);
        });

        setInterval(() => {
            keamananReport(startDate, endDate, kategori);
        }, 60000);
    }

    if ($("#keamanan-summary-wrapper").length) {
        summaryReport(monthCounter);
    }

    $("#monthRight").on("click", function () {
        monthCounter += 1;
        summaryReport(monthCounter);
    });

    $("#monthLeft").on("click", function () {
        monthCounter -= 1;
        summaryReport(monthCounter);
    });
});

function summaryReport(monthCounter) {
    let route = $('meta[name="summary-report-route"]').attr("content");
    let summaryStr = "";
    let summaryTableStr = "";

    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });

    $.ajax({
        url: route,
        data: {
            monthCounter: monthCounter,
        },
        type: "POST",
        success: function (data) {
            let subdomains = data["subdomains"];
            let status = data["status"];
            let tindakLanjut = data["tindakLanjut"];
            let userRole = $("meta[name='user-role']").attr("content");

            let countNormal = 0;
            let countDeface = 0;
            let countTidakBisaDiakses = 0;
            let countLainnya = 0;
            let sudahDiperiksa = 0;
            let belumDiperiksa = 0;
            let sudahDitindak = 0;
            let belumDitindak = 0;
            let totalSubdomain = status.length;

            summaryTableStr += `
                <table id="keamanan-summary-table" class="table table-sm table-hover">
                    <tr>
                        <th>No.</th>
                        <th>Website Subdomain</th>
                        <th>Status Periksa</th>
                        <th>Hasil Pemeriksaan</th>
                        <th>Hasil Tindak Lanjut</th>
            `;

            if (userRole == 1 || userRole == 2) {
                summaryTableStr += `<th>Aksi</th>`;
            }

            summaryTableStr += `
                </tr>
            `;

            $.each(subdomains, function (i, val) {
                let statusWebsite = null;
                let isTindakLanjut = null;

                if (status[i] != null) {
                    statusWebsite = status[i].status_website;
                    isTindakLanjut = status[i].is_tindak_lanjut;
                    switch (statusWebsite) {
                        case "Normal":
                            countNormal += 1;
                            break;
                        case "Deface":
                            countDeface += 1;
                            break;
                        case "Tidak Bisa Diakses":
                            countTidakBisaDiakses += 1;
                            break;
                        case "Lainnya":
                            countLainnya += 1;
                            break;
                    }
                    sudahDiperiksa += 1;
                } else {
                    belumDiperiksa += 1;
                }

                let linkWebsite = "https://" + val.link_website;
                summaryTableStr += `
                    <tr>
                        <td>${i + 1}</td>
                        <td>
                            <a target="_blank" href="${linkWebsite}">
                                ${linkWebsite}
                            </a>
                        </td>
                        <td>
                            ${statusWebsite != null ? statusWebsite : " - "}
                        </td>
                `;

                if (statusWebsite != null) {
                    summaryTableStr += `
                        <td>
                            <a 
                            class="pemeriksaan-modal-link" 
                            data-toggle="modal"
                            data-target=".hasil-pemeriksaan-modal"
                            data-capture="${status[i].capture}"
                            data-keterangan="${status[i].keterangan}"
                            data-tanggal="${status[i].tanggal}"
                            data-status="${status[i].status_website}"
                            data-link="${status[i].link_website}"
                            data-jam="${status[i].jam}"
                            data-name="${status[i].name}"
                            href="">View</a>
                        </td>
                    `;
                } else {
                    summaryTableStr += `
                        <td>-</td>
                    `;
                }

                if (isTindakLanjut) {
                    sudahDitindak += 1;
                    summaryTableStr += `
                    <td>
                        <a class="tindak-modal-link" 
                            data-toggle="modal"
                            data-target=".hasil-tindak-modal"
                            data-tanggal="${tindakLanjut[i][0].tanggal}"
                            data-jam="${tindakLanjut[i][0].jam}"
                            data-keterangan="${tindakLanjut[i][0].keterangan}"
                            data-capture="${tindakLanjut[i][0].capture}"
                            data-link="${status[i].link_website}"
                            data-response="${tindakLanjut[i][0].response_time}"
                            data-name="${tindakLanjut[i][0].name}"
                            href="">
                        View
                        </a>
                    </td>
                    `;
                } else {
                    if (statusWebsite != null && statusWebsite != "Normal") {
                        belumDitindak += 1;
                    }
                    summaryTableStr += `
                        <td> - </td>
                    `;
                }

                if (userRole == 1 || userRole == 2) {
                    if (
                        statusWebsite == "Normal" ||
                        statusWebsite == null ||
                        isTindakLanjut
                    ) {
                        summaryTableStr += `
                        <td>
                            <button
                                disabled
                                class="btn btn-sm btn-white">
                                Tindak
                            </button>
                        </td>
                        `;
                    } else {
                        summaryTableStr += `
                        <td>
                            <button
                                class="btn btn-sm btn-primary"
                                id="tindak-lanjut"
                                data-toggle="modal"
                                data-id="${status[i].id}"
                                data-target=".tindak-modal">
                                Tindak
                            </button>
                        </td>
                        `;
                    }
                }
            });

            summaryTableStr += `
                    </tr>
                </table>
            `;

            let totalBermasalah =
                countDeface + countTidakBisaDiakses + countLainnya;

            summaryStr = `
                <div id="keamanan-summary">
                    <div class="row">
                        <div class="col-3 d-inline-block mb-4">
                            <div class="card shadow-sm border-left-primary h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Normal</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${countNormal} / ${sudahDiperiksa}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 d-inline-block mb-4">
                            <div class="card shadow-sm border-left-warning h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Deface</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${countDeface} / ${sudahDiperiksa}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 d-inline-block mb-4">
                            <div class="card shadow-sm border-left-danger h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Tidak Bisa Diakses</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${countTidakBisaDiakses} / ${sudahDiperiksa}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 d-inline-block mb-4">
                            <div class="card shadow-sm border-left-secondary h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Lainnya</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${countLainnya} / ${sudahDiperiksa}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-3 d-inline-block mb-4">
                            <div class="card shadow-sm h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Sudah Diperiksa</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${sudahDiperiksa} / ${totalSubdomain}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 d-inline-block mb-4">
                            <div class="card shadow-sm h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Belum Diperiksa</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${belumDiperiksa} / ${totalSubdomain}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 d-inline-block mb-4">
                            <div class="card shadow-sm h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Sudah Ditindak</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${sudahDitindak} / ${totalBermasalah}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 d-inline-block mb-4">
                            <div class="card shadow-sm h-100 py-2">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Belum Ditindak</div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">${belumDitindak} / ${totalBermasalah}</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            `;

            $("#keamanan-summary").remove();
            $("#keamanan-summary-table").remove();
            $("#keamanan-summary-wrapper").append(summaryStr);
            $("#keamanan-summary-wrapper").append(summaryTableStr);

            // Ketika tombol 'Cancel' pada Modal diklik
            $("button#cancel-tindak-lanjut").on("click", function () {
                // Reset isi form
                $("#form-tindak-lanjut")[0].reset();

                // Hapus preview gambar
                $("#capture-preview").remove();
                $("#capture-label").text("Browse image..");
            });
        },
    });
}

function tindakLanjutReport() {
    console.log("TindakKK LANJUt");
    if ($("#tindak-table-wrapper").length) {
        let url = $('meta[name="tindak-lanjut-report-route"]').attr("content");
        let tindakLanjutStr = `
            <table class="table table-sm table-hover">
                <tr>
                    <th>No.</th>
                    <th>Website Subdomain</th>
                    <th>Tanggal Penindakan</th>
                    <th>Jam Penindakan</th>
                    <th>Keterangan</th>
                    <th>Response Time</th>
                    <th>Petugas</th>
                </tr>
            </table>
        `;

        $.ajaxSetup({
            headers: {
                "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
            },
        });

        $.ajax({
            url: url,
            type: "POST",
            success: function (data) {
                console.log(data["tindakLanjut"]);
            },
        });
    }
}

function keamananReport(startDate, endDate, kategori) {
    if ($("#keamanan-chart").length) {
        let url = $('meta[name="keamanan-report-route"]').attr("content");
        let dates = [];
        let counts = [];
        let data = [];
        let userRole = 0;
        let keamananTableStr = ``;

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
        $("#keamanan-table").remove();

        if (data.length > 0) {
            keamananTableStr = `
            <table class="table table-sm table-hover" id="keamanan-table">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Tanggal</th>
                        <th>Jam</th>
                        <th>Link Website</th>
                        <th>Status Website</th>
                        <th>View</th>
                        <th>Nama Petugas</th>`;

            // Tampilkan menu Aksi jika user adalah Admin atau Petugas
            if (userRole == 1 || userRole == 2) {
                keamananTableStr += `<th>Aksi</th>`;
            }

            keamananTableStr += `
                    </tr>
                        </thead>
                        <tbody>
                        `;

            $.each(data, function (i, val) {
                let date = new Date(val.tanggal);
                tanggal = moment(date).format("DD MMMM YYYY");
                keamananTableStr += `
                <tr>
                    <td>${i + 1}</td>
                    <td>${tanggal}</td>
                    <td>${val.jam}</td>
                    <td>
                        <a  target="_blank"
                            href="${val.link_website}">
                            ${val.link_website}
                        </a>
                    </td>
                    <td>${val.status_website}</td>
                    <td>
                        <a
                            href=""
                            class="detail-modal-link"
                            data-toggle="modal"
                            data-target=".detail-modal"
                            data-capture="${val.capture}"
                            data-keterangan="${val.keterangan}">
                            Mirror
                        </a>
                    </td>
                    <td>${val.name}</td>
                    <td>`;

                // Munculkan tombol tindak lanjut dan delete jika user Admin atau Petugas
                if (userRole == 1 || userRole == 2) {
                    // Matikan tombol tindak
                    // Jika status normal atau laporan sudah ditindak lanjuti

                    keamananTableStr += `
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
            });

            keamananTableStr += `</tbody></table>`;
        } else {
            keamananTableStr = `
                <h4 id="keamanan-table"
                    class="text-secondary text-center">
                    Data Tidak Ditemukan
                </h4>
            `;
        }

        $("#keamanan-table-wrapper").append(keamananTableStr);
    }

    function loadChart(dates, counts) {
        $("#keamanan-chart").remove();

        let canvasStr = `<canvas id="keamanan-chart" style="display: block; height: 320px; width: 601px;" width="751" height="400" class="chartjs-render-monitor"></canvas>`;

        // Append new canvas
        $("#keamanan-chart-wrapper").append(canvasStr);

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
                        borderColor: "rgba(2, 117, 216, 0.7)",
                        pointRadius: 3,
                        pointBackgroundColor: "rgba(2, 117, 216, 0.7)",
                        pointBorderColor: "rgba(2, 117, 216, 0.7)",
                        pointHoverRadius: 3,
                        pointHoverBackgroundColor: "rgba(2, 117, 216, 0.7)",
                        pointHoverBorderColor: "rgba(2, 117, 216, 0.7)",
                        pointHitRadius: 10,
                        pointBorderWidth: 2,
                        data: counts["normal"],
                    },
                    {
                        label: "Deface",
                        lineTension: 0,
                        backgroundColor: "rgba(78, 115, 223, 0.05)",
                        borderColor: "rgba(240, 173, 78, 0.7)",
                        pointRadius: 3,
                        pointBackgroundColor: "rgba(240, 173, 78, 0.7)",
                        pointBorderColor: "rgba(240, 173, 78, 0.7)",
                        pointHoverRadius: 3,
                        pointHoverBackgroundColor: "rgba(240, 173, 78, 0.7)",
                        pointHoverBorderColor: "rgba(240, 173, 78, 0.7)",
                        pointHitRadius: 10,
                        pointBorderWidth: 2,
                        data: counts["deface"],
                    },
                    {
                        label: "Tidak Bisa Diakses",
                        lineTension: 0,
                        backgroundColor: "rgba(78, 115, 223, 0.05)",
                        borderColor: "rgba(217, 83, 79, 0.7)",
                        pointRadius: 3,
                        pointBackgroundColor: "rgba(217, 83, 79, 0.7)",
                        pointBorderColor: "rgba(217, 83, 79, 0.7)",
                        pointHoverRadius: 3,
                        pointHoverBackgroundColor: "rgba(217, 83, 79, 0.7)",
                        pointHoverBorderColor: "rgba(217, 83, 79, 0.7)",
                        pointHitRadius: 10,
                        pointBorderWidth: 2,
                        data: counts["tidakBisaDiakses"],
                    },
                    {
                        label: "Lainnya",
                        lineTension: 0,
                        backgroundColor: "rgba(78, 115, 223, 0.05)",
                        borderColor: "rgba(41, 43, 44, 0.5)",
                        pointRadius: 3,
                        pointBackgroundColor: "rgba(41, 43, 44, 0.5)",
                        pointBorderColor: "rgba(41, 43, 44, 0.5)",
                        pointHoverRadius: 3,
                        pointHoverBackgroundColor: "rgba(41, 43, 44, 0.5)",
                        pointHoverBorderColor: "rgba(41, 43, 44, 0.5)",
                        pointHitRadius: 10,
                        pointBorderWidth: 2,
                        data: counts["lainnya"],
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
        $("a.pemeriksaan-modal-link").on("click", function () {
            let tanggal = new Date($(this).data("tanggal"));
            tanggal = moment(tanggal).format("DD MMMM YYYY");

            let jam = $(this).data("jam");
            let link = $(this).data("link");
            let status = $(this).data("status");
            let capture = $(this).data("capture");
            let keterangan = $(this).data("keterangan");
            let name = $(this).data("name");
            let path = $("#detail-capture").data("path") + capture;

            $("#detail-link").text(link);
            $("#detail-tanggal").text(tanggal);
            $("#detail-jam").text(jam);
            $("#detail-status").text(status);
            $("#detail-name").text(name);
            $("#detail-capture").attr("src", path);

            // Masukan keterangan ke ModalBox
            $("#detail-keterangan").text(keterangan);
        });

        $("a.tindak-modal-link").on("click", function () {
            let tanggal = new Date($(this).data("tanggal"));
            tanggal = moment(tanggal).format("DD MMMM YYYY");

            let jam = $(this).data("jam");
            let capture = $(this).data("capture");
            let keterangan = $(this).data("keterangan");
            let responseTime = $(this).data("response");
            let link = $(this).data("link");
            let name = $(this).data("name");
            let path = $("#tindak-detail-capture").data("path") + capture;

            $("#tindak-detail-link").text(link);
            $("#tindak-detail-tanggal").text(tanggal);
            $("#tindak-detail-jam").text(jam);
            $("#tindak-detail-keterangan").text(keterangan);
            $("#tindak-detail-name").text(name);
            $("#tindak-detail-response").text(responseTime + " Hari");
            $("#tindak-detail-capture").attr("src", path);
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
