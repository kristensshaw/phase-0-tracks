// var array = ["long phrase","longest phrase","longer phrase"];
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
function longest_word(word) {
  var longestWord = word[0]; 

// this is added because as the first loop is being run through, there is nothing to compare the word in questions length to. if we open create a variable with open quotes ti starts are 0 and has something to compaare it to.
  
    for(var i = 0; i < word.length; i++){
    var thisWord = word[i];  

      // if(array[i].length > longestWord.length){
     if(thisWord.length > longestWord.length){
        // longestWord = array[i];
        longestWord = thisWord;
      }
    }
    return longestWord;
}
// print the longest word
// console.log(longestWord);





// var people = [{name: "Kevin", age: 29}, {name: "Blake", age: 29}];

function compareKeys(item_1, item_2){
  for(var i = 1; i < people.length; i++){
    if(people[i].name !== people[0].name) {
      // || people[i].age !== people[0].age)
      return true;
    }
  }
  return false;
}

// 


function randomWords(string){
  var word = [];  
  // var word creates an open array to shovel items into
  for(var k = 0; k < string; k++){  
    // I have to create a for loop that will iterate through each letter in the variable the alphabet.
    
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var new_word ="";
    // 
    for (var i = 0; i < Math.ceil(Math.random()*10); i++) {
      new_word += (alphabet[Math.round(Math.random() * 10)]);
      // a new word is the variable for the random selection of a number that is applied to selecting the letter out of the alphabet as it's index 
    }
    
    word.push(new_word);
  }
   return word;
 }
 
 
// Driver code for longest_word
 var array = ["long phrase","longest phrase","longer phrase"];
 console.log(longest_word(array));
 
 
// Driver code for compareKeys
 var people = [{name: "Kevin", age: 29}, {name: "Blake", age: 29}];
 console.log(compareKeys(people));
 
 
// Driver code for randomWords
console.log(randomWords(3));

// Driver code for second portion of release 2

for (var k = 0; k < 10; k++) {
  var random_words = randomWords(Math.ceil(Math.random()*10));
  console.log(random_words);
  console.log(longest_word(random_words));
}