// will want to create a method that breaks up the string into an array
// we will want to reverse the letter  in the array
// then we will want to rejoin the letters
// js looks like it needs to be told to return a value
// call  method

function reverseStr(str) {

  var splitStr = str.split("");

  var reverseArr = splitStr.reverse();

  var joinArr = reverseArr.join("");

  return joinArr;

}

console.log(reverseStr("hello"));
console.log(reverseStr("nanobyte"));
// must type out console.log or else nothing shows up or displays the result

var cats = true
var dogs = false

if (cats && !dogs) {
console.log("true");
}
else {
console.log("false");
}

