const sequenceSum = (begin, end, step) => {
  let x = begin;
  let sum = 0;
  if (begin > end) {
    return 0
  } else {
    while (x <= end) {
      sum = sum + x
      x = x + step;
    }
  }
  return sum
};