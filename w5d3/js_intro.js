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

console.log(divByThreeOrFive(6));

function fizzBuzz(array) {
  array.filter(divByThreeOrFive);
}

console.log(fizzBuzz([3, 5, 7, 9, 15]));


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
