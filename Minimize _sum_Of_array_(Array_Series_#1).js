// Task
// Given an array of intgers , find the minimum sum which is obtained from summing each Two integers product .

// Notes
// Array/list will contain positives only .
// Array/list will always has even size

function minSum(arr) {
  arr = arr.sort(function (a, b) {  return a - b;  });
  let sum = 0;
  for (var i = 1; i <= ((arr.length)/2); i++) {
    sum = sum + (arr[i-1] * arr[(arr.length) - i]);
  }
  return(sum);
}

// minSum([9,2,8,7,5,4,0,6])