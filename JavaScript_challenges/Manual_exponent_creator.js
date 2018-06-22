// Build a Manual Exponent Function in JavaScript

const toThePowerOf = (num, exp) => {
  const multiply = Array(exp).fill(num);
  return multiply.reduce((a, b) => a * b);
}

toThePowerOf(2,3); //8
toThePowerOf(3,3); //27

// alternate way
const toThePowerOf = (num, exp) => {
  for (var i = 0; i < exp; i++) {
    let multiply = [];
    multiply.push(num)
  }
  return multiply.reduce((a,b) => a * b);
}