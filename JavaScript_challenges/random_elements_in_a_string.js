// You receive some random elements as a space-delimited string. Check if the elements are part of an ascending sequence of integers starting with 1, with an increment of 1 (e.g. 1, 2, 3, 4).

// Return:

// 0 if the elements can form such a sequence, and no number is missing ("not broken", e.g. "1 2 4 3")
// 1 if there are any non-numeric elements in the input ("invalid", e.g. "1 2 a")
// n if the elements are part of such a sequence, but some numbers are missing, and n is the lowest of them ("broken", e.g. "1 2 4" or "1 5")
// Examples
// "1 2 3 4"  ==>  return 0, because the sequence is complete

// "1 2 4 3"  ==>  return 0, because the sequence is complete (order doesn't matter)

// "2 1 3 a"  ==>  return 1, because it contains a non numerical character

// "1 3 2 5"  ==>  return 4, because 4 is missing from the sequence

// "1 5"      ==>  return 2, because the sequence is missing 2, 3, 4 and 2 is the lowest

function findMissingNumber(sequence){
  example = example.split(" ").sort();
  console.log(example);
  let toNumber = function (element) {
    return parseInt(element,10);
  }
  example = example.map(toNumber)
  console.log(example);

  let sample = Array.from(new Array(example.length + 1), (x,i) => i).slice(1,example.length + 1);
  console.log(sample);

  var status = true;
  var number = 0
  console.log(example.includes(5));

  sample.forEach(function(element) {
    // console.log(element);
    if (example.includes(element) !== true ) {
      console.log(number = element);
      status = false;
  }
});
}
