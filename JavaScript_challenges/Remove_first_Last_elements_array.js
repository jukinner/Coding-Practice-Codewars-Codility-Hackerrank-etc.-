// Remove the First and Last Element from a JavaScript Array

// myanswer
const firstAndLast = (arr) => {
  arr.shift() && arr.pop();
  console.log(arr)
}
let ar = [1,2,3,4,5]

firstAndLast(ar);

// other option that is simpler because the slice operation automatically returns the extracted elements. slice(2,-1) extracts the third element through the second-to-last element in the sequence.
// If end is omitted, slice extracts through the end of the sequence (sab.byteLength)

const removeFirstAndLast = arr => {
  if (arr.length >= 3) {
    return arr.slice(1,-1);
  } else {
    throw new Error("You need at least three elements in the array");
  }
}

removeFirstAndLast([1,2,3,4,5]); //returns [2,3,4]

removeFirstAndLast(["A","B","C","D"]); // RETURNS ["B","C"]

console.log(removeFirstAndLast([1,2])); // error: You Need at least three elements in the array








