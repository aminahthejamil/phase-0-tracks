/*
1. Get string and set variable equal to it
2. Reverse the characters
3. Take the last letter of the original word and add it to the first letter
position of the new word by looping.
4. Output the new, reversed word
*/


function reverse(str) {
  var newWord = ""; //variable to hold the new, reversed word
  for (var i = str.length - 1; i >= 0; i--) {
    newWord += str[i];
  } //this loop sets i equal to the length of the original word minus 1.
    //for as long as i is greater than or equal to 0, i increments through the loop
    //backwards 1 at a time
    //the last letter of the original word is, at the same time, placed in the
    //new word, starting at the first letter position
  return newWord; //this returns the new word
}

//Driver code testy test
console.log(reverse("bean"));
console.log(reverse("Hello World"));
console.log(reverse("Zigazig ah"));
console.log(reverse("Viva la Spice Girls"));

//Driver code #1
var spiceyGal = reverse("Viva la Spice Girls")

console.log(spiceyGal)

//Driver Code #2
var theMike = "Michael Jackson"
var theTruth = true

if (theTruth && (theMike = "Michael Jackson")) {
  console.log(spiceyGal);
}
else {
  console.log("No reverse for you!");
}
