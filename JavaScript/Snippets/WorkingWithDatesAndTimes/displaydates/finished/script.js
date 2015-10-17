window.onload = initDate;

function initDate() {
	var dayName = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
	var monName = new Array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
	
	var now = new Date();
	var thisMonth = now.getMonth() + 1;
	
	var dtString = "Today is " + dayName[now.getDay()] + ", and the date can be written as:<ul><li>";
	dtString += monName[now.getMonth()] + " " + now.getDate() + ", " + now.getFullYear() + "</li><li>";
	dtString += now.getDate() + " " + monName[now.getMonth()] + " " + now.getFullYear() + "</li><li>";
	dtString += thisMonth + "-" + now.getDate() + "-" + now.getFullYear() + "</li><li>";
	dtString += now.getDate() + "-" + thisMonth + "-" + now.getFullYear() + "</li></ul>";

	document.getElementById("dtField").innerHTML = dtString;
}

