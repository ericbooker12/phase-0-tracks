// take the 1st and last letters of a string and swap them,
// take the 2nd and 2nd to last letter and swap those,
// repeat until one or zero letters remain (depending if number of letters is odd or even)


function reverse(str) {
	var reverseWord = "";
	var newWord = str.split(""); // Convert word into an array for easier iteration.

	for (var i = 0; i < str.length/2; i++) {
		//store the letter to be swapped in letter variable
		letter = newWord[i]; 
		//this line will swap letter at position i with letter at position (length - i)
		newWord[i] = newWord[newWord.length - (1 + i)]; 
		newWord[newWord.length - (i + 1)] = letter; //replace last (or second to last, third to last ...) with letter
	} 

	// convert array back into string
	for (var i = 0; i < str.length; i++) {
		reverseWord = reverseWord + newWord[i];
	} 

	return reverseWord;

}

//------------------DRIVER CODE------------------

var notAPalindrome = "A man, a plan, a canal, Panama!";
reversedString = (reverse (notAPalindrome));

if (typeof notAPalindrome == "string") {
	console.log (notAPalindrome);
	console.log (reversedString);
}




