window.onload = nameFieldInit;

function nameFieldInit() {
	var userName = "";
	if (document.cookie != "") {
		userName = document.cookie.split("=")[1];
	}

	document.getElementById("nameField").value = userName;
	document.getElementById("nameField").onblur = setCookie;
}

function setCookie() {
	var expireDate = new Date();
	expireDate.setMonth(expireDate.getMonth()+6);

	var userName = document.getElementById("nameField").value;
	document.cookie = "userName=" + userName + ";path=/;expires=" + expireDate.toGMTString();
}
