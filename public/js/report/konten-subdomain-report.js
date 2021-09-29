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
            console.log(report);
            data = report["data"];

            // Tampilkan semua data pada table
            loadDataTable(data);
        },
    });

    function loadDataTable(data) {
        if (data.length > 0) {
            subdomainTableStr = `<table class="table table-hover" id="subdomain-table">
                        <thead>
                            <tr id="tr-subdomain">
                                <th>No.</th>
                                <th class="th-tanggal">Tanggal</th>
                                <th>Nama Petugas</th>
                                <th style="white-space: nowrap">Nama Instansi / Perangkat Daerah</th>
                                <th>Survey Kepuasan Masyarakat</th>
                                <th>Agenda</th>
                                <th>Foto Kegiatan</th>
                                <th>Berita</th>
                                <th>Foto Pimpinan</th>
                                <th>Struktur Organisasi</th>
                                <th>Tupoksi</th>
                                <th>Transparansi Anggaran</th>
                            </tr>
                        </thead>
                        <tbody>`;

            // Loop untuk menampilkan data Konten Subdomain ke table
            $.each(data, function (index, value) {
                subdomainTableStr += `<tr>
                                    <td>${index + 1}</td>
                                    <td>${value.tanggal}</td>
                                    <td>${value.name}</td>
                                    <td>${value.nama_pd}</td>
                                    <td>`;

                if (value.survey_kepuasan_masyarakat == 1) {
                    subdomainTableStr += ` <span class="badge badge-primary d-block py-2">
                       <i class="fas fa-check"></i>
                    </span>`;
                } else {
                    subdomainTableStr += `<span class="badge badge-danger d-block py-2">
                        <i class="fas fa-times"></i>
                    </span>`;
                }

                subdomainTableStr += `</td><td>`;

                if (value.agenda == 1) {
                    subdomainTableStr += ` <span class="badge badge-primary d-block py-2">
                        <i class="fas fa-check"></i>
                    </span>`;
                } else {
                    subdomainTableStr += `<span class="badge badge-danger d-block py-2">
                        <i class="fas fa-times"></i>
                    </span>`;
                }

                subdomainTableStr += `</td><td>`;

                if (value.foto_kegiatan == 1) {
                    subdomainTableStr += ` <span class="badge badge-primary d-block py-2">
                        <i class="fas fa-check"></i>
                    </span>`;
                } else {
                    subdomainTableStr += `<span class="badge badge-danger d-block py-2">
                        <i class="fas fa-times"></i>
                    </span>`;
                }

                subdomainTableStr += `</td><td>`;

                if (value.berita == 1) {
                    subdomainTableStr += ` <span class="badge badge-primary d-block py-2">
                        <i class="fas fa-check"></i>
                    </span>`;
                } else {
                    subdomainTableStr += `<span class="badge badge-danger d-block py-2">
                        <i class="fas fa-times"></i>
                    </span>`;
                }

                subdomainTableStr += `</td><td>`;

                if (value.foto_pimpinan == 1) {
                    subdomainTableStr += ` <span class="badge badge-primary d-block py-2">
                        <i class="fas fa-check"></i>
                    </span>`;
                } else {
                    subdomainTableStr += `<span class="badge badge-danger d-block py-2">
                        <i class="fas fa-times"></i>
                    </span>`;
                }

                subdomainTableStr += `</td><td>`;

                if (value.struktur_organisasi == 1) {
                    subdomainTableStr += ` <span class="badge badge-primary d-block py-2">
                        <i class="fas fa-check"></i>
                    </span>`;
                } else {
                    subdomainTableStr += `<span class="badge badge-danger d-block py-2">
                        <i class="fas fa-times"></i>
                    </span>`;
                }

                subdomainTableStr += `</td><td>`;

                if (value.tupoksi == 1) {
                    subdomainTableStr += ` <span class="badge badge-primary d-block py-2">
                        <i class="fas fa-check"></i>
                    </span>`;
                } else {
                    subdomainTableStr += `<span class="badge badge-danger d-block py-2">
                        <i class="fas fa-times"></i>
                    </span>`;
                }

                subdomainTableStr += `</td><td>`;

                if (value.transparansi_anggaran == 1) {
                    subdomainTableStr += ` <span class="badge badge-primary d-block py-2">
                        <i class="fas fa-check"></i>
                    </span>`;
                } else {
                    subdomainTableStr += `<span class="badge badge-danger d-block py-2">
                        <i class="fas fa-times"></i>
                    </span>`;
                }
            });

            subdomainTableStr += `</td><td></tbody></table> `;

            $("#subdomain-table-wrapper").append(subdomainTableStr);
        } else {
            subdomainTableStr = `
                        <h4 id="subdomain-table" class="text-secondary text-center">Data Tidak Ditemukan</h4>
                    `;

            $("#subdomain-table-wrapper").append(subdomainTableStr);
        }
    }
}
