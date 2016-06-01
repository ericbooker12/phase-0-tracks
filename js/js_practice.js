// -------------An Each function--------------
var each = function(array, func) {
  for (var i=0; i < array.length; i++) {
    func(array[i]);
  }
};

var bugs = ["beetle", "spider", "yellow jacket", "firefly"];

each(bugs, function(x) {console.log(x); });


// -------------A Map function--------------
var map = function(array, func) {
	var results = [];

	for (var i = 0; i < array.length; i++) {
		results.push(func(array[i]));
	}

	return results;
};

var nums = [5,12,2,81,30];

var timesTwo = function(x) {
	return x * 2
};

var numsTimesTwo = map(nums, timesTwo);
console.log(nums);
console.log(numsTimesTwo);

// -------------A Select function--------------
var select = function(array, func, letter) {
var results = [];

for (var i = 0; i < array.length; i++) {
	if(func(array[i], letter)) {
		results.push(array[i]);
	}
}

	return results;
};

// Select schools that conytain the letter 'r'
var schools = ["Berkeley", "Notre Dame", "Chicago", "Stanford", "Tulane"];

var filterR = function(x, letter) {
	if(x.includes(letter.toLowerCase()) || x.includes(letter.toUpperCase())) {
		return x;
	}
};

var rSchools = select(schools, filterR, 'a');
console.log();
console.log(schools);
console.log(rSchools);

// Select the multiples of 5:
var numbers = [4,10,39,105,73,20,15];

var multiplesOfFive = function(x) {
	if(x % 5 === 0) {
		return x;
	}
};

var fives = select(numbers, multiplesOfFive);

console.log();
console.log(numbers);
console.log(fives);

// Select the sub-arrays that contain less than 3 elements
var grid = [ [0,1,0,0],
             [1,0,1],
             [1,1,0,0,1],
             [0,1],
             [1,0,0,0] ];


var lessThan3Elements= function(x) {
	if(x.length < 3) {
		return x;
	}
};

var newArray = select(grid, lessThan3Elements);

console.log();
console.log("Grid:");
console.log(grid);
console.log("New Array: ");
console.log(newArray);

// -------------A Max function--------------

var max = function(array) {
	var biggest = array[0];

	for (var i = 0; i < array.length; i++) {
		if (array[i] > biggest) {
			biggest = array[i];
		}
	}

	return biggest;
};

var big = max(numbers);

console.log();
console.log(numbers);
console.log("The biggest number is: " + big);




