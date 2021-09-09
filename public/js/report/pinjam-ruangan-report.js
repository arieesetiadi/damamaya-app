$(function () {
    let monthCounter = 0;

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
        },
    });

    function loadDataTable(data) {
        let month = data["month"];
        let year = data["year"];
        // Ubah nama bulan pada bagian filter
        $("#monthName").text(month);

        $.each(data["dates"], function (i, val) {
            pinjamRuanganStr += `
                 <div class="pinjam-ruangan-table col-2 py-2" style="height: 100px">
                    <button class="btn btn-white h-100 w-100 border">
                        <small>
                            ${val["name"]}
                        </small>
                        <h6>
                            ${val["day"]}
                        </h6>
                        <small>
                            <span>
                                ${month}
                            </span>
                            <span>
                                ${year}
                            </span>
                        </small>
                    </button>
                </div>
            `;
        });

        $(".pinjam-ruangan-table").remove();

        // Append string ke halaman utama
        $("#pinjam-ruangan-table-wrapper").append(pinjamRuanganStr);
    }
}
