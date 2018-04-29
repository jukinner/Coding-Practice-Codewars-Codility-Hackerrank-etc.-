// Write function avg which calculates average of numbers in given list.


function find_average(array) {
  let sum = 0
  for(var num in array) {
    sum = sum + array[num];
    }
  let total = array.length;
  return sum / total;
//   return 0;
}