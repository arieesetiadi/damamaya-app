$(function () {
    let bulan = $("#subdomain-bulan option:selected").val();
    let tahun = $("#subdomain-tahun").val();

    subdomain_report(bulan, tahun);

    $("#subdomain-bulan").on("change", function () {
        bulan = $("#subdomain-bulan option:selected").text();
    });

    $("#subdomain-submit-filter").click(function () {
        bulan = $("#subdomain-bulan option:selected").val();
        tahun = $("#subdomain-tahun").val();
        subdomain_report(bulan, tahun);
    });
});

function subdomain_report(bulan, tahun) {
    let route = $('meta[name="subdomain-report-route"]').attr("content");
    let report_str = "";
    let report = [];

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
        success: function (data) {
            report_str = `<table class="table table-hover" id="subdomain-table">
                    <thead>
                        <tr id="tr-subdomain">
                            <th>No.</th>
                            <th style="white-space: nowrap">Nama Instansi / Perangkat Daerah</th>
                            <th class="th-tanggal">Tanggal</th>
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
            $.each(data["report"], function (index, value) {
                report_str += `<tr>
                                <td>${index + 1}</td>
                                <td>${value.nama_pd}</td>
                                <td>${value.tanggal}</td>
                                <td>`;

                if (value.survey_kepuasan_masyarakat == 1) {
                    report_str += ` <span class="badge badge-primary d-block py-2">Ada</span>`;
                } else {
                    report_str += `<span class="badge badge-danger d-block py-2">Tidak Ada</span>`;
                }

                report_str += `</td><td>`;

                if (value.agenda == 1) {
                    report_str += ` <span class="badge badge-primary d-block py-2">Ada</span>`;
                } else {
                    report_str += `<span class="badge badge-danger d-block py-2">Tidak Ada</span>`;
                }

                report_str += `</td><td>`;

                if (value.foto_kegiatan == 1) {
                    report_str += ` <span class="badge badge-primary d-block py-2">Ada</span>`;
                } else {
                    report_str += `<span class="badge badge-danger d-block py-2">Tidak Ada</span>`;
                }

                report_str += `</td><td>`;

                if (value.berita == 1) {
                    report_str += ` <span class="badge badge-primary d-block py-2">Ada</span>`;
                } else {
                    report_str += `<span class="badge badge-danger d-block py-2">Tidak Ada</span>`;
                }

                report_str += `</td><td>`;

                if (value.foto_pimpinan == 1) {
                    report_str += ` <span class="badge badge-primary d-block py-2">Ada</span>`;
                } else {
                    report_str += `<span class="badge badge-danger d-block py-2">Tidak Ada</span>`;
                }

                report_str += `</td><td>`;

                if (value.struktur_organisasi == 1) {
                    report_str += ` <span class="badge badge-primary d-block py-2">Ada</span>`;
                } else {
                    report_str += `<span class="badge badge-danger d-block py-2">Tidak Ada</span>`;
                }

                report_str += `</td><td>`;

                if (value.tupoksi == 1) {
                    report_str += ` <span class="badge badge-primary d-block py-2">Ada</span>`;
                } else {
                    report_str += `<span class="badge badge-danger d-block py-2">Tidak Ada</span>`;
                }

                report_str += `</td><td>`;

                if (value.transparansi_anggaran == 1) {
                    report_str += ` <span class="badge badge-primary d-block py-2">Ada</span>`;
                } else {
                    report_str += `<span class="badge badge-danger d-block py-2">Tidak Ada</span>`;
                }
            });

            report_str += `</td><td></tbody></table> `;

            $("#subdomain-table-wrapper").append(report_str);
        },
    });
}
