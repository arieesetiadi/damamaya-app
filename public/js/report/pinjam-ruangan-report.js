$(function () {
    let monthCounter = 0;

    if ($("#pinjam-ruangan-table-wrapper").length) {
        pinjamRuanganReport(monthCounter);
    }

    $("#monthRight").on("click", function () {
        monthCounter += 1;
        pinjamRuanganReport(monthCounter);
    });

    $("#monthLeft").on("click", function () {
        monthCounter -= 1;
        pinjamRuanganReport(monthCounter);
    });
});

function pinjamRuanganReport(monthCounter) {
    let route = $('meta[name="pinjam-ruangan-report-route"]').attr("content");
    let pinjamRuanganStr = "";
    let data = [];

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
            // Tampilkan semua tanggal ke halaman report
            loadDataTable(data);

            // Load semua Events
            loadEvents();
        },
    });

    function loadDataTable(data) {
        let month = data["month"];
        let year = data["year"];
        let dates = data["dates"];
        let pinjamCounts = data["pinjamCounts"];

        // Ubah nama bulan pada bagian filter
        $("#monthName").text(month);

        $.each(dates, function (i, val) {
            pinjamRuanganStr += `
                 <div class="pinjam-ruangan-table col-2 py-2" style="height: 110px">
                    <button
                        class="list-pinjam-btn btn btn-white h-100 w-100 border ${
                            pinjamCounts[i] > 0 ? "" : ""
                        } notification"
                        data-toggle="modal"
                        data-target="#list-pinjam-modal"
                        data-date="${val["full"]}">

                        <small>
                            ${val["name"]}
                        </small>

                        <center>
                            <h6 class="${
                                pinjamCounts[i] > 0
                                    ? "bg-primary w-25 text-white rounded p-1"
                                    : ""
                            }">
                            ${val["day"]}
                        </h6>
                        </center>

                        <small>
                            <span>
                                ${month}
                            </span>
                            <span>
                                ${year}
                            </span>
                        </small>
            `;

            // Notification Badge
            // if (pinjamCounts[i] > 0) {
            //     pinjamRuanganStr += `
            //         <span class="badge rounded">${pinjamCounts[i]}</span>
            //     `;
            // }

            pinjamRuanganStr += `
                      </button>
                </div>      
            `;
        });

        $(".pinjam-ruangan-table").remove();

        // Append string ke halaman utama
        $("#pinjam-ruangan-table-wrapper").append(pinjamRuanganStr);
    }

    function loadEvents() {
        // Aksi ketika tombol pada tanggal diklik
        $(".list-pinjam-btn").on("click", function () {
            $("#list-pinjam-table").remove();

            let url = $('meta[name="pinjam-ruangan-get"]').attr("content");
            let date = $(this).data("date");
            let listPinjamTableStr = "";

            $.ajax({
                url: url,
                data: {
                    date: date,
                },
                type: "POST",
                success: function (data) {
                    if (data.length > 0) {
                        // Tampilkan semua pinjaman ke modal box
                        listPinjamTableStr = `
                            <table
                                id="list-pinjam-table"
                                class="table table-hover table-sm">
                                <tr>
                                    <th>No.</th>
                                    <th>Keterangan</th>
                                    <th>Tanggal</th>
                                    <th>Jam Mulai</th>
                                    <th>Jam Selesai</th>
                                    <th>Peminjam</th>
                                    <th>Nama Petugas</th>
                                    <th>Aksi</th>
                                </tr>
                                
                        `;

                        $.each(data, function (i, val) {
                            let date = new Date(val.tanggal);
                            tanggal = moment(date).format("DD MMMM YYYY");
                            listPinjamTableStr += `
                                <tr>
                                    <td>${i + 1}</td>
                                    <td>${val.keterangan}</td>
                                    <td>${tanggal}</td>
                                    <td>${val.jam_mulai}</td>
                                    <td>${val.jam_selesai}</td>
                                    <td>${val.peminjam}</td>
                                    <td>${val.name}</td>
                                    <td>
                                        <button
                                            class="btn btn-sm btn-danger ml-2 delete-pinjam-ruangan"
                                            data-toggle="modal"
                                            data-id="${val.id}"
                                            data-target="#delete-modal">
                                            Batalkan
                                        </button>
                                    </td>
                                </tr>
                            `;
                        });

                        listPinjamTableStr += `
                            </table>
                        `;
                    } else {
                        listPinjamTableStr += `
                            <h4 id="list-pinjam-table" class="text-secondary text-center">Data Pinjaman Tidak Ditemukan</h4>
                        `;
                    }

                    $("#list-pinjam-modal .modal-body").append(
                        listPinjamTableStr
                    );

                    // Aksi ketika tombol hapus diklik
                    $(".delete-pinjam-ruangan").on("click", function () {
                        let id = $(this).data("id");

                        $("input#id").val(id);
                    });
                },
            });
        });
    }
}
