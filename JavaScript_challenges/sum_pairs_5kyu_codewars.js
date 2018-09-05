// Sum of Pairs
// Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.

// sum_pairs([11, 3, 7, 5],         10)
// #              ^--^      3 + 7 = 10
// == [3, 7]

// sum_pairs([4, 3, 2, 3, 4],         6)
// #          ^-----^         4 + 2 = 6, indices: 0, 2 *
// #             ^-----^      3 + 3 = 6, indices: 1, 3
// #                ^-----^   2 + 4 = 6, indices: 2, 4
// #  * entire pair is earlier, and therefore is the correct answer
// == [4, 2]

// sum_pairs([0, 0, -2, 3], 2)
// #  there are no pairs of values that can be added to produce 2.
// == None/nil/undefined (Based on the language)

// sum_pairs([10, 5, 2, 3, 7, 5],         10)
// #              ^-----------^   5 + 5 = 10, indices: 1, 5
// #                    ^--^      3 + 7 = 10, indices: 3, 4 *
// #  * entire pair is earlier, and therefore is the correct answer
// == [3, 7]
VERY INEFFICIENT:
TO DO: update with a memory variable to check if it has already been tested before going further

var sum_pairs=function(ints, s){
  let bucket = [];
  for (i = 0; i < ints.length; i++) {
    for(z=i+1; z < ints.length; z++) {
      if(ints[i] + ints[z] == s) {
        if (bucket.length == 0) {
          bucket.push(ints[i]);
          bucket.push(ints[z]);
        } else if (bucket.length != 0) {
          let initialI = bucket.indexOf(bucket[0], i);
          let initialZ = bucket.indexOf(bucket[1], initialI);
          let diff = initialZ - initialI;
          if (diff > (ints.indexOf(ints[z],i) - ints.indexOf(ints[i],i))) {
            bucket = [];
            bucket.push(ints[i]);
            bucket.push(ints[z]);
          } 
        }
      }
    }
  }
if (bucket.length > 0) {
  return bucket;
} else {
  return null;
}
}