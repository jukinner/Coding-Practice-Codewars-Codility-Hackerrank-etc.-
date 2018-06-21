// using a class is the best way to store the value. 

class ArrayPopper {
  constructor(arr) {
    this.arr = arr;
    this.atBeginning = true;
  }
  
  togglePopper() {
    this.atBeginning = !this.atBeginning;
    console.log(this.atBeginning ? this.arr.pop() : this.arr.shift());
    
  }
}

const ap = new ArrayPopper([1,2,3,4,5]);

ap.togglePopper();


// ternary operator: if this.atBegnning is true, return this.arr.pop(), if it is false, use this.arr.shift