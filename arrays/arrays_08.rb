# Write a program that iterates over an array and builds a new array that is
# the result of incrementing each value in the original array by a value of 2.

nums = [3, 10, 4, 3014, -5]
nums_two_higher = nums.map { |x| x + 2 }

p nums
p nums_two_higher
