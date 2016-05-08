//Declare array variables
var colors = ["blue","red","orange","yellow"];
var names = ["Crazy Legs","Triple Frown","Mane Attraction","Strutz"];

//Add a color and a horse to arrays
colors.push("green");
names.push("Uncle Buck");

//Print arrays
console.log(colors)
console.log(names)

//create value-key pairs using hash-like object

var names_colors = {}

for (var i = 0; i < colors.length; i +=1) {
  names_colors[names[i]] = colors[i];
}

console.log(names_colors);

//constructor function for cars

function Car(model, mpg, made_by_ford) {

  console.log("Our new car:", this);
  this.model = model;
  this.mpg = mpg;
  this.made_by_ford = made_by_ford;

  this.drive = function () {console.log("vrooomm!");};

  console.log("The " + this.model + " has been made.");
}

var newcar = new Car("Model T",5,true);
console.log(newcar);
newcar.drive();

var anothernewcar = new Car("Corvette",25,false);
console.log(anothernewcar);
anothernewcar.drive();