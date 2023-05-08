var menuHam = document.getElementById("menuHamburger");
var menuMain = document.getElementById("mainMenu");

if(menuHam != null && menuMain!= null) {
	menuHam.addEventListener('click', function(e){
		if(menuMain.className == 'containerSearch is-active') {
			menuMain.className = 'containerSearch';
		}
		else {
			menuMain.className = 'containerSearch is-active';
		}
	});
}