// Grade book
// Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.

// Numerical Score Letter Grade
// 90 <= score <= 100  'A'
// 80 <= score < 90  'B'
// 70 <= score < 80  'C'
// 60 <= score < 70  'D'
// 0 <= score < 60 'F'
// Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.

function getGrade (s1, s2, s3) {
  const avg = (s1+s2+s3)/3
  let answer = ""
	if (avg <= 100 && avg >= 90){
     answer = "A" 
  } else if (avg < 90 && avg >= 80) {
	  answer = "B"
  } else if (avg < 80 && avg >= 70) {
	  answer = "C"
  } else if (avg < 70 && avg >= 60) {
	  answer = "D"
  } else {
    answer = "F"
  }
  return answer
}

// best answer
function getGrade (s1, s2, s3) {
  avg = (s1+s2+s3)/3;
  if (avg < 60)  return "F";
    else if (avg < 70) return "D";
    else if (avg < 80) return "C";
    else if (avg < 90) return "B";
    else return "A";
}

// 2nd answer - too complicated
function getGrade (s1, s2, s3) {
  var s = (s1 + s2 + s3) / 3
  return s >= 90 ? "A" : s >= 80 ? "B" : s >= 70 ? "C" : s >= 60 ? "D" : "F"
}

//I like this use of reduce to get the average everytime. 
let average = scores.reduce((a, b) => a + b) / scores.length