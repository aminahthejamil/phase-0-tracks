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
