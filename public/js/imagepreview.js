$(function () {
    $("#capture").on("change", function (e) {
        if ($("#capture-preview").length) {
            $("#capture-preview").remove();
        }

        let img_file = $("#capture").prop("files")[0];
        let img_url = URL.createObjectURL(img_file);

        let preview_str = `
            <div id="capture-preview" class="d-flex justify-content-center pt-2">
                <img class="w-100 rounded" src="${img_url}" alt="Capture">
            </div>`;

        $("#capture-preview-wrapper").append(preview_str);
        $("#capture-label").text(img_file.name);

        $("#capture-preview img").on("load", function () {
            URL.revokeObjectURL($("#capture-preview img").prop("src"));
        });
    });
});
