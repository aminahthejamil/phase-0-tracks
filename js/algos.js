// Release 0

/* 1. Set a variable equal to an array full of words.
   2. Loop through the array
   3. Compare each array to the last
   4. Return the element with the longest length
   5. Need two loops
    - one to loop through the array
    - one to loop through the string characters

*/

var arr = ["first item", "second item", "third item is long"];
var strLength = 0;
var longestWord;

function theLongestWord(array) {
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].length > strLength) {
      var longestWord = arr.length;
      longestWord = arr[i];
    }
  }
   return longestWord;
}

console.log(theLongestWord(arr));


// Release 1
/* 1. Have two objects and compare them
   2. Iterate through the objects
   3. If there are matching key-value pairs, return true; if none, return false
*/

function objectMatch(objectOne, objectTwo) {
  
}
