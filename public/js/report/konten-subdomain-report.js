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
            $.each(data, function (i, data) {
                subdomainTableStr += `
                        <tr>
                        <td>${i + 1}</td>
                        <td>${data.tanggal}</td>
                        <td>${data.name}</td>
                        <td>${data.nama_pd}</td>
                    `;

                $.each(status[i], function (i, status) {
                    // if (status.is_uptodate != null) {
                    //     console.log(status.is_uptodate);
                    // } else if (status.tanggal_update != null) {
                    //     console.log(status.tanggal_update);
                    // }
                    if (status.status == 1) {
                        if ((status.is_uptodate != null) & status.is_uptodate) {
                            subdomainTableStr += statusButton(
                                "Lengkap",
                                data,
                                status
                            );
                        } else {
                            if (status.tanggal_update) {
                                subdomainTableStr += statusButton(
                                    "Lengkap",
                                    data,
                                    status
                                );
                            } else {
                                subdomainTableStr += statusButton(
                                    "Ada",
                                    data,
                                    status
                                );
                            }
                        }
                    } else {
                        subdomainTableStr += statusButton(
                            "Tidak Ada",
                            data,
                            status
                        );
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
        // Aksi ketika tombol status konten subdomain diklik
        $(".konten-subdomain-modal-btn").on("click", function () {
            $("#konten-subdomain-modal-table").remove();

            let name = $(this).data("name");
            let status = $(this).data("status");
            let tanggalUpdate = $(this).data("tanggal-update");
            let isUptodate = $(this).data("is-uptodate");
            let namaPd = $(this).data("nama-pd");

            $("#konten-subdomain-modal-title").text(namaPd);

            let kontenSubdomainModalStr = `
                <table id="konten-subdomain-modal-table" class="w-100 table table-borderless">
                    <tr>
                        <td>Dokumen</td>
                        <td>:</td>
                        <td>${name}</td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td>:</td>
                        <td>${status == 1 ? "Ada" : "Tidak Ada"}</td>
                    </tr>
            `;

            if (isUptodate != null) {
                kontenSubdomainModalStr += `
                    <tr>
                        <td>Up to Date</td>
                        <td>:</td>
                        <td>${isUptodate == 1 ? "Iya" : "Tidak"}</td>
                    </tr>
                `;
            }

            if (tanggalUpdate != null) {
                kontenSubdomainModalStr += `
                    <tr>
                        <td>Tanggal Update</td>
                        <td>:</td>
                        <td>${tanggalUpdate}</td>
                    </tr>
                `;
            }

            kontenSubdomainModalStr += `</table>`;

            $("#konten-subdomain-modal-body").append(kontenSubdomainModalStr);
        });
    }

    function statusButton(type, data, status) {
        let icon = "";
        let btnColor = "";

        switch (type) {
            case "Tidak Ada":
                icon = `<i class="fas fa-times"></i>`;
                btnColor = `btn-danger`;
                break;
            case "Ada":
                icon = `<i class="fas fa-check"></i>`;
                btnColor = `btn-secondary`;
                break;
            case "Lengkap":
                icon = `<i class="fas fa-check"></i>`;
                btnColor = `btn-primary`;
                break;
        }
        return ` 
            <td>
                <button 
                class="konten-subdomain-modal-btn btn btn-sm btn-block ${btnColor} d-block" 
                data-toggle="modal" 
                data-target=".konten-subdomain-modal" 
                data-nama-pd="${data.nama_pd}" 
                data-name="${status.name}" 
                data-status="${status.status}" 
                data-is-uptodate="${status.is_uptodate}" 
                data-tanggal-update="${status.tanggal_update}" 
                >
                    ${icon}
                </button>
            </td>
        `;
    }
}

// Event untuk isChecked pada Survey Kepuasan Masyarakat
$("#status-skm").on("change", function () {
    let isChecked = $(this).prop("checked");

    if (isChecked) {
        $("#tanggal-update-skm").prop("disabled", false);
    } else {
        $("#tanggal-update-skm").prop("disabled", true);
    }
});

// Event untuk isChecked pada Transparansi Anggaran
$("#status-ta").on("change", function () {
    let isChecked = $(this).prop("checked");

    if (isChecked) {
        $("#tanggal-update-ta").prop("disabled", false);
    } else {
        $("#tanggal-update-ta").prop("disabled", true);
    }
});

// Event untuk isChecked pada Transparansi Anggaran
$("#status-ta").on("change", function () {
    let isChecked = $(this).prop("checked");

    if (isChecked) {
        $("#tanggal-update-ta").prop("disabled", false);
    } else {
        $("#tanggal-update-ta").prop("disabled", true);
    }
});

// Event untuk isChecked pada foto Kegiatan
$("#status-fk").on("change", function () {
    let isChecked = $(this).prop("checked");

    if (isChecked) {
        $("#tanggal-update-fk").prop("disabled", false);
    } else {
        $("#tanggal-update-fk").prop("disabled", true);
    }
});

// Event untuk isChecked pada foto Kegiatan
$("#status-berita").on("change", function () {
    let isChecked = $(this).prop("checked");

    if (isChecked) {
        $("#tanggal-update-berita").prop("disabled", false);
    } else {
        $("#tanggal-update-berita").prop("disabled", true);
    }
});

// Event untuk isChecked pada foto Kegiatan
$("#status-so").on("change", function () {
    let isChecked = $(this).prop("checked");

    if (isChecked) {
        $("#is-uptodate-so").prop("disabled", false);
    } else {
        $("#is-uptodate-so").prop("disabled", true);
    }
});

// Event untuk isChecked pada foto Kegiatan
$("#status-fp").on("change", function () {
    let isChecked = $(this).prop("checked");

    if (isChecked) {
        $("#is-uptodate-fp").prop("disabled", false);
    } else {
        $("#is-uptodate-fp").prop("disabled", true);
    }
});

// Event untuk isChecked pada foto Kegiatan
$("#status-tupoksi").on("change", function () {
    let isChecked = $(this).prop("checked");

    if (isChecked) {
        $("#is-uptodate-tupoksi").prop("disabled", false);
    } else {
        $("#is-uptodate-tupoksi").prop("disabled", true);
    }
});

// Event untuk isChecked pada foto Kegiatan
$("#status-agenda").on("change", function () {
    let isChecked = $(this).prop("checked");

    if (isChecked) {
        $("#is-uptodate-agenda").prop("disabled", false);
    } else {
        $("#is-uptodate-agenda").prop("disabled", true);
    }
});
