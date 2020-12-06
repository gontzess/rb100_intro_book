# Write a program that loops through a hash and prints all of the keys.
# Then write a program that does the same thing except printing the values.
# Finally, write a program that prints both.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

family.each_key { |k| puts k }

family.each_value { |v| puts v }

family.each { |k, v| puts "#{k}: #{v}" }
