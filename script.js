function copyToClipBoard(el) {
    let text = el.previousElementSibling.innerText;
    navigator.clipboard.writeText(text).then(function() {
        el.innerHTML = `<i class="bi bi-clipboard-check"></i>`;
    }, function(err) {
        el.innerHTML = `<i class="bi bi-clipboard-x"></i>`;
    });
}