async function ajax(url, method, data) {
    let csrf = document.getElementsByName("csrf-token")[0].content;
    let xhr = new XMLHttpRequest();
    let formData = new FormData();
    let result;

    for (let index in data) {
        formData.append(index, data[index]);
    }

    xhr.open(method, url, true);
    xhr.setRequestHeader("x-csrf-token", csrf);
    xhr.send(formData);

    xhr.onload = await function () {
        // result = JSON.parse(xhr.response);
        result = xhr;
        // console.log(result);
    };

    return result;
}
