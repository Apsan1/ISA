function insert(num) {
    document.getElementById("display").value = document.getElementById("display").value + num;
}

function equal() {
    var exp = document.getElementById("display").value;
    if (exp) {
        document.getElementById("display").value = eval(exp);
    }
}

function backspace() {
    var exp = document.getElementById("display").value;
    document.getElementById("display").value = exp.substring(0, exp.length - 1);
}

