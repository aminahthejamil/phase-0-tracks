var colors = ["blue", "green", "indigo", "red"];
var names = ["Bobby", "Daryl", "Luke", "James"];

colors.push("orange");
names.push("Freddy");

console.log(colors);
console.log(names);

// Create an object in JS:
var horses = {};
for (var i = 0; i < names.length; i++) {
	for (var j = 0; j < colors.length; j++) {
		horses[names[i]] = colors[i];
	}

}
console.log(horses);

function Car(name, color, model, year) {
	this.name = name;
	this.color = color;
	this.model = model;
	this.year = year;
	this.beep = function() { console.log("Beep!"); };
	console.log("Car initialized");
}

var aCar = new Car("Rocket", "red", "XYZ2k", 2020)
var bCar = new Car("Spazz", "fluorescent blue", "Yikes", 2024)
var cCar = new Car("iCar", "space gray", "S", 2027)

console.log(aCar);
console.log(bCar);
console.log(cCar);
aCar.beep();
bCar.beep();
cCar.beep();
