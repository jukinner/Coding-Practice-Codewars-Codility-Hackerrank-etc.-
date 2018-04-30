// If You Complete Minimize _sum_Of_array !!! You Know By Now How To Manipulate Array Effectively ,

// If Not You Can Take a Look To Get How Things Work :

// Minimize_Sum_Of_array

// Well , It's Time To Expand Our Series For More :

// We are Given an array [] of n integers,

// The Task Is To Find a Subsequence Of Size k Whose `Product Of Maxima` Among All Possible k Sized Subsequences Of Given Array.
// Notes :
// 1- Array Size is at least 3 .

// 2- The Vector's Numbers could be a mixture of Positives and Negatives also Zeros .

// 3- Repeatition of Numbers in the Array Could Occur .

// If Any Of The Previous Points (Notes) Is Not Clear , Pay Attention To The Examples Clarify Everything .
// Input >> Output Examples ::
// 1- maxProduct ({4,3,5}, 2)  return 20

// Explanation :: 

// since the size (k) equal 2 , then it's 5*4 = 20 .

function maxProduct(numbers, size){
  var product = 1
  numbers = numbers.sort(function (a, b) {  return a - b;  }).reverse();
  for (var i = 0; i <= (size-1); i++) {
    product = product * numbers[i];
  }
  return(product);
}