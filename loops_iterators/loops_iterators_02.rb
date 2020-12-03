
input = "NO"
x = 1

while input != "STOP" do
  puts x
  x += 1
  puts "I will keep listing numbers until you say so. STOP or NO?"
  input = gets.chomp
end

=begin
x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end
=end
