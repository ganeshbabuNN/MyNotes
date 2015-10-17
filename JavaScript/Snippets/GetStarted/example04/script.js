// this is a single line comment
window.onload = writeMessage;

/* this is a lengthy
	multi-line comment
	that goes on and on and on
*/
function writeMessage() {
	document.getElementById("helloMessage").innerHTML = "Hello, world! from an external script";
}
