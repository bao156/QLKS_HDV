

function addColumn() {
    document.getElementById("test").innerHTML = "hello1";

    tbl = document.getElementsByTagName("table")[0];
    tr = tbl.getElementsByTagName("tr");
    for (i = 0; i < tr.length; i++) {

        var td = document.createElement('td');
        var input = document.createElement('text');
        td.appendChild(input);
        tr[i].appendChild(td);
    }
}

tbl = document.getElementsByTagName("table")[0];
tr = tbl.getElementsByTagName("tr");
for (i = 0; i < tr.length; i++) {
    var trow;
    if (i == 0) {
        trow = document.createElement('th');
        var input = document.createElement("div");
        input.innerHTML = "Room 1";
        trow.appendChild(input);
    } else {
        trow = document.createElement('td');
    }

    tr[i].appendChild(trow);
}
