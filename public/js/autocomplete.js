$(function () {
    var route = "{{ route('get.instansi') }}";

    console.log(route);

    $("#instansi-pro").typeahead({
        source: function (query, process) {
            return $.get(
                route,
                {
                    query: query,
                },
                function (data) {
                    return process(data);
                }
            );
        },
    });
});
