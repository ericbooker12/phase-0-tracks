
var horseNames = ["Ed", "Fred", "Ted", "Ned"];
var colors = ["red", "blue", "orange", "pink"];

function addAHorse(horseName, color) {
	horseNames.push(horseName);
	colors.push(color);

} 

addAHorse("Santiago", "chartreuse")
addAHorse("Steven", "green")

var horses = {};

for (var i = 0; i < horseNames.length; i++) {
	horses[horseNames[i]] = colors[i];
}

console.log();
console.log(horses);

console.log();


function Car(color, topSpeed, type, automatic) {
	this.color = color;
	this.topSpeed = topSpeed;
	this.type = type;
	this.automatic= automatic;

	this.travelTime = function() {
		console.log("In this car, it will take " + parseInt(55/this.topSpeed * 60) + 
			" minutes to get from Santa Rosa to San Francisco, " + 
			"\nAssuming you are driving at top speed and in a straight line the entire time.");

	};

	console.log("CAR INITIALIZATION COMPLETE");	
}

// make an array of cars:
var cars = [];
cars.push(new Car("red", 120, "sport", false));
cars.push(new Car("blue", 95, "sedan", true));
cars.push(new Car("brown", 60, "hatch back", true));
cars.push(new Car("Gray", 110, "sport", true));
cars.push(new Car("Silver", 650, "A fast one", true));

// Print the data for the cars:
for (var i = 0; i < cars.length; i++) {
	console.log(); 
	console.log("Car " + (i + 1));
	console.log("Color: " + cars[i].color); 
	console.log("Top speed: " + cars[i].topSpeed + " mph"); 
	console.log("Type: " + cars[i].type); 
	console.log("Automatic? " + cars[i].automatic);
	cars[i].travelTime(); 
	
};


