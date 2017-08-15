// Release 0

/* 1. Set a variable equal to an array full of words.
   2. Loop through the array
   3. Compare each array to the last
   4. Return the element with the longest length
   5. Need two loops
    - one to loop through the array
    - one to loop through the string characters
*/


function theLongestWord(array) {
  var strLength = 0;
  //var longestWord;
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > strLength) {
      var longestWord = array.length;
      longestWord = array[i];
    }
  }
   return longestWord;
}

// Release 1
/* 1. Have two objects and compare them
   2. Iterate through the objects
   3. If there are matching key-value pairs, return true; if none, return false
*/

arrayOne = [];
arrayTwo = [];
function toArrayOne(object) {
  Object.keys(object).forEach(function(key) {
      arrayOne.push(key);
  });
  Object.values(object).forEach(function(value) {
      arrayOne.push(value);
  });
  return arrayOne;
}

function toArrayTwo(object) {
  Object.keys(object).forEach(function(key) {
      arrayTwo.push(key);
  });
  Object.values(object).forEach(function(value) {
      arrayTwo.push(value);
  });
  return arrayTwo;
}

var obj1 = {name: "Space", age: 45};
var obj2 = {name: "Goon", age: 45};

var isMatch = false;
function objectMatch() {
  for (var i = 0, j = arrayOne.length; !isMatch && i < j; i++) {
    for (var x = 0; x < arrayTwo.length; x++) {
      if (toArrayOne(arrayOne).indexOf(toArrayTwo(arrayTwo[i])) > -1) {
        isMatch = true;
        break;
      }
      else {
        isMatch = false;
      }
    }
  }
  return isMatch;
}

console.log(objectMatch);

// Release 2
/* 1. Create a function with a parameter 'n'
   2. Create an empty array
   3. Set the array length equal to 'n'
   4. Generate a random number
   5. Create strings the length of the random number and push the 'n' amount of strings to the empty array
*/

function randomTest(n) {
  array = [];

  var text = "";
  var chars = "abcdefghijklmnopqrstuvwxyz";
  var len = Math.floor(Math.random() * 10);

  // outside for loop for the number of words we have to create
  for (var x = 0; x < n; x++) {

    // randomly generate the length of the word
    len = 1 +  Math.round(Math.random() * 9);

    //this for loop creates a random word
    for(var i = 0; i < len; i++) {
      text += chars.charAt(Math.floor(Math.random() * chars.length));
    }

    // add the new word to our array of words
    array.push(text);

    // reset the text variable
    text = "";
  }
return array;
}

// Driver Code

for (var i = 0; i < 10 ; i++) {

    var longArray = randomTest(3);
    console.log(longArray);
    console.log("Here is the longest word:")
    console.log(theLongestWord(longArray));
}
