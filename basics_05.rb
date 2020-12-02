def factorial(n)
  if n <= 0 || !( n.is_a? Integer )
    puts "error"
  elsif n > 0 && ( n.is_a? Integer )
    sub_total = n
    while n > 1
      sub_total *= (n - 1)
      n -= 1
    end
    return sub_total
  end
end

puts factorial(5)
puts 5 * 4 * 3 * 2 * 1
puts factorial(6)
puts 6 * 5 * 4 * 3 * 2 * 1
puts factorial(7)
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts factorial(8)
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
