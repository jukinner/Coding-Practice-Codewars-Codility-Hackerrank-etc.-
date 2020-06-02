# A natural number is called k-prime if it has exactly k prime factors, counted with multiplicity. A natural number is thus prime if and only if it is 1-prime.

# Examples:
# k = 2 -> 4, 6, 9, 10, 14, 15, 21, 22, …
# k = 3 -> 8, 12, 18, 20, 27, 28, 30, …
# k = 5 -> 32, 48, 72, 80, 108, 112, …
# Task:

# Given an integer k and a list arr of positive integers the function consec_kprimes (or its variants in other languages) returns how many times in the sequence arr numbers come up twice in a row with exactly k prime factors?

# Examples:

# arr = [10005, 10030, 10026, 10008, 10016, 10028, 10004]
# consec_kprimes(4, arr) => 3 because 10005 and 10030 are consecutive 4-primes, 10030 and 10026 too as well as 10028 and 10004 but 10008 and 10016 are 6-primes.

# consec_kprimes(4, [10175, 10185, 10180, 10197]) => 3 because 10175-10185 and 10185- 10180 and 10180-10197 are all consecutive 4-primes.

require 'prime' 

def consec_kprimes(k, arr)
  count, start, second = 0, 0, 1
  (arr.length - 1).times do 
    count += 1 if Prime.prime_division(arr[start]).map! {|x| x[1] }.inject(:+) == k && Prime.prime_division(arr[second]).map! {|x| x[1] }.inject(:+) == k
    start += 1
    second += 1
  end
  count
end

# consec_kprimes(3, [8, 12, 18, 20, 27, 28, 30])
consec_kprimes(3, [10158, 10182, 10184, 10172, 10179, 10168, 10156, 10165, 10155, 10161, 10178, 10170]) 
# 5
consec_kprimes(2, [10110, 10102, 10097, 10113, 10123, 10109, 10118, 10119, 10117, 10115, 10101, 10121, 10122])
# 7
 consec_kprimes(2, [10123, 10122, 10132, 10129, 10145, 10148, 10147, 10135, 10146, 10134])
# 2
#     testing(consec_kprimes(6, [10176, 10164]), 0)
#     testing(consec_kprimes(1, [10182, 10191, 10163, 10172, 10178, 10190, 10177, 10186, 10169, 10161, 10165, 10181]), 0)