var els = document.getElementsByTagName("h2");
var el = els[0];

function addPinkBorder() {
    el.style.border = "5px solid pink";
}

el.addEventListener("click", addPinkBorder);```

