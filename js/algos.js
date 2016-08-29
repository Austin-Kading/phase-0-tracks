 // Write a function that takes an array of strings and returns the longest
 // Set variable highValue to empty string
 // Iterate through the array
 // for each word in the string find its length and 
 // return the highest value word
function largeString(string) {
 var highValue = "";

  for (var i = 0; i < string.length; i++ ) {
    if (string[i].length > highValue.length) {
      highValue = string[i];
    }
  }
  return highValue;
}


  /////////////////////////////////////

// Write a function that takes to objects and returns true if the objects share
// at least one key-value pair.  Otherwise return false.
// Iterate through the properties of the first object and look for an equivalent property in the second object.
// If a match is found, compare the values.  If the values are equal, return.  Otherwise return false.


function shareVal(obj1, obj2) {
  this.object1 = object1;
  this.object2 = object2;

  if (object1.name == object2.name) {
    console.log(true);
    } else if (object1.age == object2.age) {
      console.log(true);
    } else {
    console.log(false);
  }
}


var object1 = {name: "Stacy", age: 10};
var object2 = {name: "Steve", age: 10};

// Write a function that takes an integer for length
// and builds/returns an array of strings of the given length


// Building array
function buildArray(length) {
  var array = [];

  for (var i = 0; i < length; i++) {
    array.push(randomWord());
  }

   console.log(array);
}

// Generate a random word of random length
function randWord() {
  var letters = "abcdefghijklmnopqrstuvwxyz";
  var length = Math.floor((Math.random() * 10) + 1);
  var word = "";

  for (var i = 0; i < length; i++) {
    word += letters[Math.floor((Math.random() * 20))];
  }

  console.log(word);
}



// DRIVER CODE

// RELEASE 0

 console.log(largeString(["batter", "bat", "test"]));
  console.log(largeString(["Austin", "cat", "Jimaaaaaaaaas"]))
  console.log(largeString(["bam", "lamb", "hizzle"]))


// RELEASE 1

var test = new shareVal(object1, object2);

// RELEASE 2
// Couldnt successfully get release 2 to work

for (var i = 0; i < 10; i++) {
  console.log(buildArray(i + 1));
}