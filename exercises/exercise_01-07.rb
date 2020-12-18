# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |x| puts x }


# Same as above, but only print out values greater than 5.
arr.each { |x| puts x if x > 5 }


# Now, using the same array from #2, use the select method to extract all odd
# numbers into a new array.
arr_odd = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select { |x| x.odd? }
#p arr_odd


# Append 11 to the end of the original array. Prepend 0 to the beginning.
arr.push(11)
arr.unshift(0)
#p arr


# Get rid of 11. And append a 3.
arr.pop
arr.push(3)
#p arr


# Get rid of duplicates without specifically removing any one value.
arr.uniq!
p arr


# What's the major difference between an Array and a Hash?
# An array is indexed while a hash is not.
# The major difference between an array and a hash is that a hash contains a
# key value pair for referencing by key.
