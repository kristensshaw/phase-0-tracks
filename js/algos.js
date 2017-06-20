var array = ["long phrase","longest phrase","longer phrase"];
// we have an array with three phrases of different lengths
// we want to be able to evaluate how long each phrase is in the array and then be able to pick out the longest phrase and return it

// function findLongest(arr) {
  
//   var maxLength = 0;

//   for (var i = 0; i < words.length; i++) {
//     if (words[i].length > maxLength) {
//       maxLength = words[i].length;
//     }
//   }

//   return maxLength;
// }
// console.log(findLongest(array));


// array.forEach(function findLongest(item, index, array) {


//   console.log(findLongest(array));

// var length = 0;
var longestWord = ''; 
// this is added because as the first loop is being run through, there is nothing to compare the word in questions length to. if we open create a variable with open quotes ti starts are 0 and has something to compaare it to.

for(var i = 0; i < array.length; i++){
  var thisWord = array[i];

  // if(array[i].length > longestWord.length){
 if(thisWord.length > longestWord.length){
    // longestWord = array[i];
    longestWord = thisWord;
  }
}

console.log(longestWord);
