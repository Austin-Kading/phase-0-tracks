// The variable reverseString is a function that takes a string and reverses it.
// It starts off with the function and has a parameter of s for string.
// I then take s.split to turn it into a array then .reverse it then finally .join it back to a string.


var reverseString = function(s) {
  return s.split('').reverse().join('');
};
// Example of storing the string to a new variable
var newString = reverseString("Austin");
// Variable that prints the variable if true
var boolean = function(s) {
  if (s == 1) {
    console.log(s);
  }
  else {
    false
  }
}


console.log("This is my name backwords" + " " + reverseString('Austin'));
console.log(newString)
boolean(1)

