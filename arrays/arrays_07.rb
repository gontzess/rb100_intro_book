# Use the each_with_index method to iterate through an array of your creation
# that prints each index and value of the array.


names = ['bob', 'joe', 'susan', 'margaret', 'STEVE']
names.each_with_index { |val, idx| puts "#{idx + 1}. #{val}" }
