// def even_occur(array)
// 	bucket = nil
// 	array.uniq.each do |x|
// 		if array.count(x) % 2 == 0
// 			bucket = array.count(x)
// 			break
// 		end 
// 	end
// 	bucket
// end


// even_occur ([1, 2, 2, 3, 4, 4, 4, 4])

var even_occur = (array) => {
	var storage = {}

	array.forEach(function(value, index) {
		storage[value] = storage[value] + 1 || 1
	});
	console.log(storage);
	// loop through array to find first occurence of an even count
  for (var i = 0; i < array.length; i++) {
    var current = array[i];

  	if (storage[current] % 2 === 0) {
  		return current;
  	}
  }
}

even_occur ([1, 2, 2, 3, 4, 4, 4, 4])