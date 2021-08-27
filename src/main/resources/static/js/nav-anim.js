function openNav() {
    document.getElementById("side-nav").style.width = "250px";
    document.getElementById("side-nav").style.borderWidth = "0 2px 0 0";
    document.getElementsByTagName("BODY")[0].style.marginLeft="250px";
    document.getElementById("side-nav-open").style.width="0";
    document.getElementById("side-nav-open").style.borderWidth="none";


}

function closeNav() {
    document.getElementById("side-nav").style.width = "0"
    document.getElementById("side-nav").style.borderWidth="0"
    document.getElementsByTagName("BODY")[0].style.marginLeft="0";
    document.getElementById("side-nav-open").style.width="40px";
    document.getElementById("side-nav-open").style.borderWidth="0 2px 2px 0";
}