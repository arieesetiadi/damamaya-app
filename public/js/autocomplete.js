var route = $('meta[name="get-instansi"]').attr("content");
var routeSubdomains = $('meta[name="get-subdomain"]').attr("content");

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

$("#link_website").typeahead({
    source: function (key, process) {
        return $.get(
            routeSubdomains,
            {
                key: key,
            },
            function (data) {
                return process(data);
            }
        );
    },
});
