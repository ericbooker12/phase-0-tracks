// Release 0 pseudocode
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


var strings = ["long phrase", "longest phrase", 
				"This is probably the most longest phrase in this whole entire array", 	
				"longer phrase", "This phrase is way longer than the last"];

var biggest = findBiggestString(strings);

console.log(biggest);
