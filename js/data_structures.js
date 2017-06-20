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

