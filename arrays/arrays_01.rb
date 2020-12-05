# Below we have given you an array and a number.
# Write a program that checks to see if the number appears in the array.



arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is included in the array."
else
  puts "#{number} is not included in the array."
end
