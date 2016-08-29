// an array of four colors
var color_arr = ["blue", "green", "black", "red"];

// an array of four names
var names = ["gary", "jill", "henry", "jasmine"];

// Write additional code that adds another color to the colors array
color_arr.push("yellow");

names.push("ling");

var horses = {};

//add code that will use your two arrays to create an object
//The keys of your object should be horse names, 
//and the values should be colors
for (var i = 0; i < names.length; i++) {
  horses[names[i]] = color_arr[i];
}

///////////////////////////////////////////

//write a constructor function for a car
function Car(type, yearModel, isFast) {
  console.log("This is your new car:", this);

  this.type = type;
  this.yearModel = yearModel;
  this.isFast = isFast;

  this.rev = function() { console.log("VROOOOMMMMM!!!"); };

  console.log("CAR INITIALIZATION COMPLETE!");
}

// DRIVER CODE
console.log(color_arr);

console.log(names); 

console.log(horses);

var car_instances = [];

console.log("Let's build a car ...");

var truck = new Car("Dodge Ram 1500", 1998, false);
console.log(truck);
console.log("Our car can rev:");
truck.rev();
console.log("----------");

// Playing around with adding car instances into an array
// and assigned to a variable
console.log("***********");
car_instances.push(truck);
console.log(car_instances);
console.log("***********");

var muscleCar = new Car("Camaro V8", 1967, true);
console.log(muscleCar);
console.log("This can definitely rev");
muscleCar.rev();
console.log("---------");

console.log("***********");
car_instances.push(muscleCar);
console.log(car_instances);
console.log("***********");