// Get the Average from an Array in JavaScript
// My answer
var array = [1,2,3]

var  getAverage = function(array) {
  console.log(array.reduce((a, b) => a + b, 0) / array.length);
}

getAverage(array);

// Jordan's answer

const getAverage = arr => {
    const total = 0;
    arr.array.forEach(element => {
        total += element
    });
}

const getAverage = arr => {
  //sum the values from the array
  const reducer = (total, currentValue) => total + currentValue;
  const sum = arr.reduce(reducer);

  // get the length of the array
  const length = arr.length

  //divide the array sum by the length;
  console.log(sum/length);
}




// pass reduce a function
// the arguments for reduce are (the accumulator(it accumulates the value), then the current value of the array you are working with.)can acutally get reid of reducer and just use the function into the reduce method. 
// reduce iterates through the entire array.
// reduce is a function that accepts up to 4 arguments. alls the call back fn one time for each emelement in the array. Calls the specified callback function for all the elements in the an array. 