// Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.

// Examples
// "This is an example!" ==> "sihT si na !elpmaxe"
// "double  spaces"      ==> "elbuod  secaps"

function reverseWords(str) {
  let answer = [];
  let new_str = str.split(" ");
  new_str.forEach(function(element){
    answer.push(element.split("").reverse().join(""))
  });
  return answer.join(" ");
}

