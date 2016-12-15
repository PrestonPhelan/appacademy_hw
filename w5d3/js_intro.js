function madLib(verb, adjective, noun) {
  console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}`);
}

//madLib('make', 'best', 'guac');

function isSubstring(searchString, subString) {
  console.log(searchString.includes(subString));
}

//isSubstring("time to program", "time");

//isSubstring("Jump for joy", "joys");

function divByThreeOrFive(n) {
  return ((n % 5 && !(n % 3)) || (n % 3 && !(n % 5)) );
}

//console.log(divByThreeOrFive(6));

function fizzBuzz(array) {
  array.filter(divByThreeOrFive);
}

//console.log(fizzBuzz([3, 5, 7, 9, 15]));


function isPrime(number) {
  if(number < 2) {
    return false;
  }

  for(var i = 2; i < number; i++) {
    if(number % i === 0) {
      return false;
    }
  }
  return true;
}

function sumOfNPrimes(n) {
  var i = 2;
  var count = 1;
  var sum = 0;
  for (i = 2; count <= n; i++) {
    if(isPrime(i)) {
      count++;
      sum += i;
    }
  }
  return sum;
}


function allOrNothing(){
  var mod = arguments[0];
  for(var i = 1; i < arguments.length; i++) {
    if(arguments[i] % mod === 0) continue;
    else return false;
  }
  return true;
}


function printCallback(array) {
  array.forEach(function(x) {
    console.log(x);
  });
}

function titleize(array, callback) {
    let titles = array.map(function(name) {
      return `Mx. ${name} Jingleheimer Schmidt`;
    });

    callback(titles);
}

titleize(["Mary", "Brian", "Leo"], printCallback);


function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}


Elephant.prototype.trumpet = function() {
  console.log(`#{this.name} the elephant goes 'phrRRRRRRRRR!!!!!!'`);
};

Elephant.prototype.grow = function() {
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  let index =  Math.floor(Math.random() * (this.tricks.length - 1));
  console.log(`#{this.name} is #{this.tricks[index]}!`);
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];


Elephant.paradeHelper = function(elephant) {
  console.log(`${elephant.name} is trotting by!`);
};

herd.forEach(Elephant.paradeHelper);


function dinerBreakfast() {
  
}

let bfastOrder = dinerBreakfast;
console.log(bfastOrder());
bfastOrder("chocolate chip pancakes");
console.log(bfastOrder());
bfastOrder("grits");
console.log(bfastOrder());
