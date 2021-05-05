// You will be given an array and a limit value. You must check that all values in the array are below or equal to the limit value. If they are, return true. Else, return false.

// You can assume all values in the array are numbers.

class Kata {
    static def smallEnough(arr, limit) {
      arr.sort().last() <= limit ? true : false
    }
}

// Best Answer
class Kata {
    static def smallEnough(arr, limit) {
        return arr.max() <= limit
    }
}