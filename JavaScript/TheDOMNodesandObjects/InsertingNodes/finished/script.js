window.onload = initAll;
var nodeChangingArea;

function initAll() {
	document.getElementsByTagName("form")[0].onsubmit = nodeChanger;
	nodeChangingArea = document.getElementById("modifiable");
}

function addNode() {
	var inText = document.getElementById("textArea").value;
	var newText = document.createTextNode(inText);

	var newGraf = document.createElement("p");
	newGraf.appendChild(newText);

	nodeChangingArea.appendChild(newGraf);
}

function delNode() {
	var delChoice = document.getElementById("grafCount").selectedIndex;
	var allGrafs = nodeChangingArea.getElementsByTagName("p");
	var killGraf = allGrafs.item(delChoice);

	nodeChangingArea.removeChild(killGraf);
}

function insertNode() {
	var inChoice = document.getElementById("grafCount").selectedIndex;
	var inText = document.getElementById("textArea").value;

	var newText = document.createTextNode(inText);
	var newGraf = document.createElement("p");
	newGraf.appendChild(newText);

	var allGrafs = nodeChangingArea.getElementsByTagName("p");
	var oldGraf = allGrafs.item(inChoice);

	nodeChangingArea.insertBefore(newGraf,oldGraf);
}

function replaceNode() {
	var inChoice = document.getElementById("grafCount").selectedIndex;
	var inText = document.getElementById("textArea").value;

	var newText = document.createTextNode(inText);
	var newGraf = document.createElement("p");
	newGraf.appendChild(newText);

	var allGrafs = nodeChangingArea.getElementsByTagName("p");
	var oldGraf = allGrafs.item(inChoice);

	nodeChangingArea.replaceChild(newGraf,oldGraf);
}

function nodeChanger()  {
	var actionType = -1;
	var currentPgraphCount = nodeChangingArea.getElementsByTagName("p").length;
	var radioButtonSet = document.getElementsByTagName("form")[0].nodeAction;
	
	for (var i=0; i<radioButtonSet.length; i++) {
		if (radioButtonSet[i].checked) {
			actionType = i;
		}
	}
	
	switch(actionType) {
		case 0:
			addNode();
			break;
		case 1:
			if (currentPgraphCount > 0) {
				delNode();
				break;
			}
		case 2:
			if (currentPgraphCount > 0) {
				insertNode();
				break;
			}
		case 3:
			if (currentPgraphCount > 0) {
				replaceNode();
				break
			}
		default:
			alert("No valid action was chosen");
	}
	
	document.getElementById("grafCount").options.length = 0;

	for (i=0; i<nodeChangingArea.getElementsByTagName("p").length; i++) {
		document.getElementById("grafCount").options[i] = new Option(i+1);
	}

	return false;
}
