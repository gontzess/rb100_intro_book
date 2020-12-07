# Write a program that checks if the sequence of characters "lab" exists in
# the following strings. If it does exist, print out the word.

def lab_check(string)
  if /lab/.match(string)
    puts string
  else
    puts "no"
  end
end

lab_check("laboratory")
lab_check("experiment")
lab_check("Pans Labyrinth")
lab_check("elaborate")
lab_check("polar bear")
