$(function () {
    if ($("#subdomain-table-wrapper").length) {
        let bulan = $("#subdomain-bulan option:selected").val();
        let tahun = $("#subdomain-tahun").val();

        subdomainReport(bulan, tahun);

        $("#subdomain-bulan").on("change", function () {
            bulan = $("#subdomain-bulan option:selected").text();
        });

        $("#subdomain-submit-filter").click(function () {
            bulan = $("#subdomain-bulan option:selected").val();
            tahun = $("#subdomain-tahun").val();
            subdomainReport(bulan, tahun);
        });
    }
});

function subdomainReport(bulan, tahun) {
    let route = $('meta[name="subdomain-report-route"]').attr("content");
    let subdomainTableStr = "";
    let data = [];
    let status = [];

    $("#subdomain-table").remove();

    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });

    $.ajax({
        url: route,
        data: {
            bulan: bulan,
            tahun: tahun,
        },
        type: "POST",
        success: function (report) {
            data = report["data"];
            status = report["status"];

            // Tampilkan semua data pada table
            loadDataTable(data, status);

            // Load semua event
            loadEvents();
        },
    });

    function loadDataTable(data, status) {
        if (data.length > 0) {
            subdomainTableStr = `<table class="table table-hover" id="subdomain-table">
                        <thead>
                            <tr id="tr-subdomain">
                                <th>No.</th>
                                <th class="th-tanggal">Tanggal</th>
                                <th>Nama Petugas</th>
                                <th style="white-space: nowrap">Nama Instansi / Perangkat Daerah</th>
                                <th>Survey Kepuasan Masyarakat</th>
                                <th>Transparansi Anggaran</th>
                                <th>Foto Kegiatan</th>
                                <th>Berita</th>
                                <th>Struktur Organisasi</th>
                                <th>Foto Pimpinan</th>
                                <th>Tupoksi</th>
                                <th>Agenda</th>
                            </tr>
                        </thead>
                        <tbody>`;

            // Loop untuk menampilkan data Konten Subdomain ke table
            $.each(data, function (i, dt) {
                subdomainTableStr += `
                        <tr>
                        <td>${i + 1}</td>
                        <td>${dt.tanggal}</td>
                        <td>${dt.name}</td>
                        <td>${dt.nama_pd}</td>
                    `;

                $.each(status[i], function (i, sts) {
                    if (sts.status == 1) {
                        // console.log(
                        //     sts.name,
                        //     sts.status,
                        //     sts.tanggal_update,
                        //     sts.is_uptodate,
                        //     dt.nama_pd
                        // );
                        subdomainTableStr += ` 
                        <td>
                            <button 
                            class="konten-subdomain-modal-btn btn btn-sm btn-block btn-primary d-block" 
                            data-toggle="modal" 
                            data-target=".konten-subdomain-modal" 
                            data-nama-pd="${dt.nama_pd}" 
                            data-name="${sts.name}" 
                            data-status="${sts.status}" 
                            data-is-uptodate="${sts.is_uptodate}" 
                            data-tanggal-update="${sts.tanggal_update}" 
                            >
                                <i class="fas fa-check"></i>
                            </button>
                        </td>
                    `;
                    } else {
                        subdomainTableStr += `
                        <td>
                            <button 
                            class="konten-subdomain-modal-btn btn btn-sm btn-block btn-danger d-block" 
                            data-toggle="modal"
                            data-target=".konten-subdomain-modal"
                            data-nama-pd="${dt.nama_pd}" 
                            data-name="${sts.name}" 
                            data-status="${sts.status}" 
                            data-is-uptodate="${sts.is_uptodate}" 
                            data-tanggal-update="${sts.tanggal_update}" 
                            >
                                <i class="fas fa-times"></i>
                            </button>
                        </td>
                    `;
                    }
                });
            });

            subdomainTableStr += `</td></tr></tbody></table> `;

            $("#subdomain-table-wrapper").append(subdomainTableStr);
        } else {
            subdomainTableStr = `
                        <h4 id="subdomain-table" class="text-secondary text-center">Data Tidak Ditemukan</h4>
                    `;

            $("#subdomain-table-wrapper").append(subdomainTableStr);
        }
    }

    function loadEvents() {
        $(".konten-subdomain-modal-btn").on("click", function () {
            let name = $(this).data("name");
            let status = $(this).data("status");
            let tanggalUpdate = $(this).data("tanggal-update");
            let isUptodate = $(this).data("is-uptodate");
            let namaPd = $(this).data("nama-pd");
        });
    }
}
