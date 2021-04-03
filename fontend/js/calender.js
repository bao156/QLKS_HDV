

function addColumn(roomNumber) {
    var tbl = document.getElementsByTagName("table")[0];
    var tr = tbl.getElementsByTagName("tr");

    for (let i = 0; i < tr.length; i++) {
        var trow;
        if (i == 0) {
            trow = document.createElement('th');
            var input = document.createElement("div");
            input.innerHTML = "Room " + roomNumber;
            trow.appendChild(input);
        } else {
            trow = document.createElement('td');
        }
        tr[i].appendChild(trow);
    }
}

$(document).ready(function () {
    for(let i=1; i<= 3; i++){
        addColumn(i);
    }
});
