// The Task is to find all the LEADERS in the array.

// An element is leader if it is greater than The Sum all the elements to its right side.
// Notes :

// 1- Vector Size is at least 3 .

// 2- The Vector's Numbers could be a mixture of Positives and Negatives also Zeros .

// 3- Repeatition of Numbers in the Vector Could Occur .

// 4- The Leaders Vector should Store the Leading numbers In the Same Order in the Original Vector .

// If Any Of The Previous Points (Notes) Is Not Clear , Pay A

ISSUE IS IN THE REDUCE FUNCTION, IT KEEPS TIMING OUT LEAVING 3 ITEMS LEFT IN THE ARRAY TO ITERATE OVER. 


var arrayLeaders = numbers => {
  let leaders = [];
  // let sum = 0
  for (number in numbers) {
    let temp = [];
    temp = numbers.shift(number);
    console.log(temp);
    if (temp[0] > numbers.reduce((total, amount) => total + amount);) {
      leaders.push(temp[0]);
      console.log(leaders);
    } 
  }

  return leaders
}

arrayLeaders([16,17,4,3,5,2]


var arrayLeaders = numbers => {
  let leaders = [];
  // let sum = 0
  // console.log(numbers.length);
  for (var i = 0; i < (numbers.length)-1; i++) {
    console.log(numbers[i]);
    console.log(i);
    let temp = [];
    // console.log(temp);
    temp = numbers.shift();
    console.log(temp);
    console.log(numbers);
    const sum = numbers.reduce((total, amount) => total + amount);
    console.log(sum);
    if ((temp > sum) && (i < ((numbers.length)-2)) {
      leaders.push(temp);
      console.log(leaders);
    } elseif (i === 3)
    sum = numbers[i] + numbers[i+1]+
  }

  console.log(leaders);
}

arrayLeaders([16,17,4,3,5,2]);