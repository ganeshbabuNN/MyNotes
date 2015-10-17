window.onload = initAll;

function initAll() {
	document.getElementsByTagName("form")[0].onsubmit = addNode;
	document.getElementById("deleteNode").onclick = delNode;
}

function addNode() {
	var inText = document.getElementById("textArea").value;
	var newText = document.createTextNode(inText);

	var newGraf = document.createElement("p");
	newGraf.appendChild(newText);

	var docBody = document.getElementsByTagName("body")[0];
	docBody.appendChild(newGraf);

	return false;
}

function delNode() {
	var allGrafs = document.getElementsByTagName("p");
	
	if (allGrafs.length > 1) {
		var lastGraf = allGrafs.item(allGrafs.length-1);
		var docBody = document.getElementsByTagName("body")[0];
		var removed = docBody.removeChild(lastGraf);
	}
	else {
		alert("Nothing to remove!");
	}

	return false;
}
