//This program listens for a mouse click on the red square. 
// When the red square is clicked, a blue square below it appears.

console.log("The script is running");

// Add an element to the page
var subheading = document.getElementById("subheading");
subheading.insertAdjacentHTML('beforeend', '<div><h5>This text was added after the subheading with JavaScript.</h5></div>');


var blueSquare = document.getElementById("another-square");
var blueSquareText = document.getElementById("blue-square-text");
var redSquare= document.getElementById("press-me");

function addSquare() {
	
	blueSquare.style.visibility = "visible";
	blueSquareText.style.visibility = "visible";

}

function removeSquare() {
	blueSquare.style.visibility = "hidden";
	blueSquareText.style.visibility = "hidden";
}

redSquare.addEventListener("click", addSquare);
blueSquare.addEventListener("click", removeSquare);