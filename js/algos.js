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


function randomWords(integer){
  // var word creates an open array to shovel items into
  var word = [];  

  // Create a for loop that iterates as many times as the integer input requests to make the number of words in an array. ie. if integer is 4 then the program will run 4 times to create 4 new words.
  for(var k = 0; k < integer; k++){  
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var new_word = "";
    // as long as the number of letters that are being used to develop a new word do not exceed 10 character, create the word
    for (var i = 0; i < Math.ceil(Math.random()*10); i++) {
    // for (var i = 0; i < Math.ceil(Math.random()*25); i++) {
      // A loop that will iterate over the entirety of the alphabet to randomly select a letter from said var alphabet.
      new_word += (alphabet[Math.round(Math.random() * 25)]);
      // new_word += (alphabet[Math.round(Math.random() * 10)]);

      // a new word is to be created but only with a minumum of 1 and max of 10 letters to create said word.
    }
    
    word.push(new_word);
    // the new word(s) that will be made will be inserted(push) into array that holds the words
  }
   return word;
   // display or print the result of the developed array that holds the collection of new words that have been randomly selected
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

// for (var k = 0; k < 10; k++) {
//   var random_words = randomWords(Math.ceil(Math.random() * 10));
//   console.log(random_words);
//   console.log(longest_word(random_words));

// }
for (var a = 0; a < 10; a++) {
  // a < 10 determines how many times this loop is executed. run the loop 10 times and it will run the loops to randomize numbers to help select letters in the alphabet to create a new word
  // var random_words = randomWords(Math.ceil(Math.random() * 10));
  var random_words = randomWords(3);
  // create a variable that holds the product of the function randomWords 
  console.log(random_words);
  // we will want to print to the console to see all of the looped produced arrays of random words and varying lengths since it will be random
  console.log(longest_word(random_words));
  // finally, insert variable that holds the ransomWords product into the longestWord function.
}