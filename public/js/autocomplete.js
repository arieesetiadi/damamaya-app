var route = $('meta[name="get-instansi"]').attr("content");

$.ajaxSetup({
    headers: {
        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
    },
});

$("#nama_pd").typeahead({
    source: function (key, process) {
        return $.get(
            route,
            {
                key: key,
            },
            function (data) {
                return process(data);
            }
        );
    },
});
