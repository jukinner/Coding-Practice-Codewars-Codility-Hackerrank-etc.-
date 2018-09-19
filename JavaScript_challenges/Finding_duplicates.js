// # Finding a Duplicate Element in Ruby
// # In this guide you will be learning how to find the first repeated element from an array.
// # Summary
// # Build out a method for finding the first duplicate element from an array.

// # Exercise Description
// # "Define a method that will return the first repeated element from an array."

// # Example Data
// # arr_one = [5, 3, 4, 5, 3, 1]
// # first_repeated_element(arr_one)
// # => 5

// # arr_two = [3, 5, 3, 4, 5, 3, 1]
// # first_repeated_element(arr_two)
// # => 5
// # Real World Usage
// # This exercise will help you prevent from using duplicate info within your code base.

let first_repeated_element = (arr) => {
    let answer = null;
    let sum = 0;
    let unique = [...new Set(arr)];
    unique.forEach(function(element) {
        arr.forEach(function(arrElement) {
            if(arrElement === element){
                sum = sum + 1;
                if(sum > 1) {
                    answer = element
                    return answer;
                }
            }
        });
    });
    return answer;
}


let arr_one = [5, 3, 4, 5, 3, 1]
first_repeated_element(arr_one)

// arr_two = [3, 5, 3, 4, 5, 3, 1]
// first_repeated_element(arr_two)

// arr = []
// first_repeated_element(arr)

// describe 'first_repeated_element' do
//   it 'returns the first repeated element from an array' do
//     arr_one = [5, 3, 4, 5, 3, 1]
//     expect(first_repeated_element(arr_one)).to eq(5)

//     arr_two = [3, 5, 3, 4, 5, 3, 1]
//     expect(first_repeated_element(arr_two)).to eq(3)
//   end

//   it 'returns nil for an empty array' do
//     arr = []
//     expect(first_repeated_element(arr)).to eq(nil)
//   end

//   it 'returns nil if no duplicates are found' do
//     arr = [1, 2, 3]
//     expect(first_repeated_element(arr)).to eq(nil)
//   end
// end