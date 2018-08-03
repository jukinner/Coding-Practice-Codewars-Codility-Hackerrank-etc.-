// Take a Number And Sum Its Digits Raised To The Consecutive Powers And ....¡Eureka!!
// The number 89 is the first integer with more than one digit that fulfills the property partially introduced in the title of this kata. What's the use of saying "Eureka"? Because this sum gives the same number.

// In effect: 89 = 8^1 + 9^2

// The next number in having this property is 135.

// See this property again: 135 = 1^1 + 3^2 + 5^3

// We need a function to collect these numbers, that may receive two integers a, b that defines the range [a, b] (inclusive) and outputs a list of the sorted numbers in the range that fulfills the property described above.

// Let's see some cases:

// sumDigPow(1, 10) == [1, 2, 3, 4, 5, 6, 7, 8, 9]

// sumDigPow(1, 100) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 89]
// If there are no numbers of this kind in the range [a, b] the function should output an empty list.

// sumDigPow(90, 100) == []

// first pass that works.... Would be better to use a map function to get rid of some items. use select or .map ---how do you do a multi line map in javascript?
function sumDigPow(a, b) {
  let range = [];
  for (var i = a; i < b+1; i++) {
    range.push(i);
  }
  var collector = [];
  range.forEach(function(element) {
    let num = element.toString().split("");
    let x = 0;
    breakdown = [];
    num.forEach(function(calc) {
      breakdown.push(parseInt(num[x]) ** (x+1));
      x++;
    })
    collector.push(breakdown);
  });
  function getSum(total, num) {
    return total + num;
  }
  let counter = 0;
  let answer = [];
  collector.forEach(function(final) {
    if (final.reduce(getSum) === range[counter]) {
      answer.push(final.reduce(getSum));
    }
    counter++
  });
  console.log(answer);
}

// best practice

