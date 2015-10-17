window.onload = choosePic;

var myPix = new Array("images/teacup00.jpg","images/teacup01.jpg","images/teacup02.jpg","images/teacup03.jpg","images/teacup04.jpg","images/teacup05.jpg","images/teacup06.jpg","images/teacup07.jpg");

function choosePic() {
	randomNum = Math.floor((Math.random() * myPix.length));
	document.getElementById("myPicture").src = myPix[randomNum];
}
