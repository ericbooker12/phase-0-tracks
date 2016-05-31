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

// Release 2
// Pseudocode:
// 1. Create an empty words array.
// 2. Create a loop that iterates x times. x will be given.
// 3. inside the loop, push a random length word to the array.
// 4. create a random number between 1 and 10.
// 5. create another loop that iterates as many times as the random number.
// 6. inside of that loop, create another random number between 0 and 25.
// 7. assign that number to a letter based on an alphabet key, create an array for this key.
// 8. push that letter to a single word array
// 9. convert the single word array to a string
// 10. push that word string to the main array 



var makeArray = function(len) {
	var wordArray = [];
	
	var alphaKey = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 
					'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 
					'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 
					'y', 'z'];

	// Outer loop. Each loop creates a word.
	for (var i = 0; i < len; i++) {
		var word = []; // an array to hold random letters, later to be converted tp word string.
		
		// create a random number to determine how many letters will be in the word.
		var rdm = getRandomNum(10) + 1; // add 1 so range is 1 - 10 and not 0 - 9.
		// Inner loop to generate a word of random letters
		for (var j = 0; j < rdm; j++) {  
			// create a random number between 0 and 25 (26 is exclusive)
			// Each number will generate a random letter from the alphabet key to create a nonsense word.
			var rdm2 = getRandomNum(26)
			var letter = alphaKey[rdm2];
			word.push(letter);  //Store letters in an array.
		}

		word = word.join('');  // convert array of random letters to a string
		// console.log(word);

		wordArray.push(word); // create an array of nonsense words.
	}

	return wordArray;
};

// This function creates a random integer number. Used in the make array function.
var getRandomNum = function(range) {
	return  Math.floor((Math.random() * range))
}




// ---------DRIVER CODE---------
//release 0

var strings = ["long phrase", "longest phrase", 
				"This is probably the most longest phrase in this whole entire array", 	
				"longer phrase", "This phrase is way longer than the last"];

var biggest = findBiggestString(strings);

// console.log(biggest);

//---------
//release 1

var obj1 = {name: "Steven", age: 54};
var obj2 = {name: "Tamir", 'age': 54};

// if (findMatch(obj1, obj2)) {
// 	console.log("There was a match between the 2 objects.")
// } else {
// 	console.log("There was not a match between the 2 objects.")
// };

//---------
//release 2
var len = 3;

for (var i = 0; i < 10; i++){
	console.log("\n-------------------------------------------------------------")
	var arrayOfWords = makeArray(len);
	var longestWord = findBiggestString(arrayOfWords);

	console.log("Your " + len + " random nonsense words are: \n" + arrayOfWords.join(', '));
	console.log("The longest nonsense word is: \n" + longestWord );
}


