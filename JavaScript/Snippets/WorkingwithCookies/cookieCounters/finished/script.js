window.onload = cookieDelete;

function cookieDelete() {
	var cookieCt = 0;

	if (document.cookie != "" && confirm("Do you want to delete the cookies?")) {
		var thisCookie = document.cookie.split("; ");
		cookieCt = thisCookie.length;

		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate()-1);

		for (var i=0; i<cookieCt; i++) {
			var cookieName = thisCookie[i].split("=")[0];
			document.cookie = cookieName + "=;path=/;expires=" + expireDate.toGMTString();
		}
	}
	document.getElementById("cookieData").innerHTML = "Number of cookies deleted: " + cookieCt;
}
