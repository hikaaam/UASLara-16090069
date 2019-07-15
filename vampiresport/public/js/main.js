
function openForm() {
  document.getElementById("myForm").style.display = "block";
  document.getElementById("searchIcon").style.display = "none";
  document.getElementById("inputSearch").value="";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
  document.getElementById("searchIcon").style.display = "block";
}
function popupMobile()
{
    document.getElementById("wrap-side-menu").style.display = "block";

}
function popupMobile()
{
    document.getElementById("wrap-side-menu").style.display = "block";
    document.getElementById("menuMobile").style.display = "none";
    document.getElementById("ClosemenuMobile").style.display = "block";
}
function closeMobile()
{
    document.getElementById("menuMobile").style.display = "block";
    document.getElementById("ClosemenuMobile").style.display = "none";
    document.getElementById("wrap-side-menu").style.display = "none";
}
function openFormShare() {
    document.getElementById("share").style.display = "block";
    document.getElementById("shareIcon").style.display = "none";
  }
function closeFormShare() {
    document.getElementById("share").style.display = "none";
    document.getElementById("shareIcon").style.display = "block";
  }




function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
  }
  