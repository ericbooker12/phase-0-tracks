// Release 0 
// Pseudocode:
// 1. Iterate through array of strings
// 2. Call the first string the biggest string regardless of size.
// 3. Go to the next string, count the characters and compare it to the last string in the array. 
// 	If it is bigger than the last one then call the curent string the biggest string,
// 	Otherwise, the last string remains the biggest string.
// 4. When done iterating through the entire array, return the string that is labeled biggest string.

var findBiggestString = function(array) {
	var biggestString = array[0];
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > biggestString.length) {
			biggestString = array[i];
		}
	}

	return biggestString;
};

// Release 1
// Pseudocode:
// 1. Iterate through an object.
// 2. Look at the 1st key of the object and call it key1
// 3. Iterate through the second object and compare each key to key1.
// 4. if there is a match then look at the values to see if there is a match.
// 5 if the key/value pair matches then return true. 
// 	if they match, then look at the values
// 	if the values match then return true
// 	Otherwise move on to the next key
// 3. If no key/value pair is a match then return false.

var findMatch = function(obj1, obj2) {
	for (var x in obj1) {
		for (var y in obj2) {
			if (x == y) {  // Can also use '(x in obj2)' instead of '(x == y)' as conditional statement
				if(obj1[x].toString() == obj2[x].toString()) {
					return true;
				}
			}
		}
	}
	return false;
};


// ---------DRIVER CODE---------
//release 0
var strings = ["long phrase", "longest phrase", 
				"This is probably the most longest phrase in this whole entire array", 	
				"longer phrase", "This phrase is way longer than the last"];

var biggest = findBiggestString(strings);

console.log(biggest);

//---------
//release 1
var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", 'age': 54};

if (findMatch(obj1, obj2)) {
	console.log("There was a match between the 2 objects.")
} else {
	console.log("There was not a match between the 2 objects.")
};


