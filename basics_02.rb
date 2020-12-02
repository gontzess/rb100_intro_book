x = 9382

ones = x % 10
tens = x % 100 / 10
hundreds = x % 1000 / 100
thousands = x % 10000 / 1000

puts "x is #{x}"
puts "ones is #{ones}"
puts "tens is #{tens}"
puts "hundreds is #{hundreds}"
puts "thousands is #{thousands}"
