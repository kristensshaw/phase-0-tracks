// release 0

var colors = ["gold", "blue", "red", "white"];

var names = ["Ed", "Wyatt", "Frank", "Larry"];

colors.push("black");

names.push("Kevin");

// print arrays after adding new data.
console.log(colors);
console.log(names);

var horses = [];

for(var i = 0; i < names.length; i++){
  horses[names[i]] = colors[i];

};

// print 
console.log("Horses and their colors");
console.log(horses);

// Car object
//===================
function Car(brand, manufactureYear, isAutomatic){

this.brand = brand;

this.manufactureYear = manufactureYear;

this.isAutomatic = isAutomatic;

this.start = function() {
  console.log("The car started");
};
};

// print data
var myCar = new Car("BMW", 2011, false);
console.log("Our car is:");
console.log(myCar);
myCar.start();
myCar.manufactureYear = 2014;
console.log("After manufacture year adjustment");
console.log(myCar);
// Make another car object

var mySecond = new Car("Toyota", 2012, true);
console.log("Our second car is:");
console.log(mySecond);
mySecond.start();
