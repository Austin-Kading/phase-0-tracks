The variable reverseString is a function that takes a string and reverses it.
// It starts off with the function and has a parameter of s for string.
// I then take s.split to turn it into a array then .reverse it then finally .join it back to a string.
// Once the string is reversed I then stored the.

var reverseString = function(s) {
  return s.split('').reverse().join('');
};

var newString = reverseString("Austin");



// console.log("This is my name backwords" + " " + reverseString('Austin'));
console.log(newString)

