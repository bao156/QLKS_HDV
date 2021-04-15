// $(function () {
//     var includes = $('[data-include]')
//     $.each(includes, function () {
//         var file = './' + $(this).data('include') + '.html'
//         $(this).load(file)
//     })
// })

function toggleForm(form) {
    toggle = toggle * (-1);
    alert(toggle);
}

function closeAllTabs(){
    document.getElementById("booking").style.display = "none";
    document.getElementById("login").style.display = "none";
    document.getElementById("register").style.display = "none";
}

function showForm(option) {
    var x = document.getElementById(option);
    var btn = document.getElementById("btn-" + option);
    var btnToggle = document.getElementById("sidebar").querySelectorAll("a");
    closeAllTabs();
    // turn-off all button sidebar
    for (i = 0; i < btnToggle.length && option != "register"; i++) {
        btnToggle[i].className = "";
    }

    if (x.style.display === "none") {
        if (option === "register") document.getElementById("login").style.display = "none";
        if (option === "login") document.getElementById("register").style.display = "none";
        x.style.display = "block";
        btn.className = "active";
    } else {
        x.style.display = "none";
        btn.className = "";
    }
}
