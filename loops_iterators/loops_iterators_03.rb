def countdown(num)
  if num == 0
    puts 0
  elsif num < 0
    puts "Try a non-negative number pal."
  else
    puts num
    countdown(num - 1)
  end
end

countdown(12)
countdown(-15)
