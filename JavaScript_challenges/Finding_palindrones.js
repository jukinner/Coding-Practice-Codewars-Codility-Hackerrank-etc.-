// 'str = 'I am going to jump into my racecar and see tacocat'
// str_with_different_cases = 'Time to jump into my racEcAr and see Tacocat' '
// ->expect(all_palindromes(7, str)).to eq(['racecar', 'tacocat'])
//     expect(all_palindromes(7, str_with_different_cases)).to eq(['racEcAr', 'Tacocat'])
//     expect(all_palindromes(1, str)).to eq(['I'])

let findingPalindrones = (num, string) => {
    let storage = [];
    string.split(" ").forEach(function(element) {
      if(element.toLowerCase() === element.split("").reverse().join("").toLowerCase()) {
        storage.push(element)
      }
    });
  return storage;
}

let str_with_different_cases = 'Time to jump into my racEcAr and see Tacocat'

findingPalindrones(7,str_with_different_cases)