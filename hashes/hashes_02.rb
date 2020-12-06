# Look at Ruby's merge method. Notice that it has two versions.
# What is the difference between merge and merge!?
# Write a program that uses both and illustrate the differences.


hash_1 = { a: 204, b: 492, c: 482 }
hash_2 = { d: 103, e: 752, f: 381 }

puts "WITHOUT EXCLAIMATION MARK"
puts "Hash_1 before merging:"
p hash_1
puts "Hash_2 before merging:"
p hash_2

hash_1.merge(hash_2)

puts "Hash_1 after merging:"
p hash_1
puts "Hash_2 after merging:"
p hash_2

puts "Result? No changes to Hash_1 or Hash_2 because we created a new hash without modifying the caller."

hash_a = { a: 204, b: 492, c: 482 }
hash_b = { d: 103, e: 752, f: 381 }

puts "WITH EXCLAIMATION MARK"
puts "Hash_a before merging:"
p hash_a
puts "Hash_b before merging:"
p hash_b

hash_a.merge!(hash_b)

puts "Hash_a after merging:"
p hash_a
puts "Hash_b after merging:"
p hash_b

puts "Result? Hash_a is modified to now include the merged hash."
