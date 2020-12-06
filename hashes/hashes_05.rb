# What method could you use to find out if a Hash contains a specific value
# in it? Write a program to demonstrate this use.



family = {  uncles: "bob",
            sisters: "jill",
            brothers: "frank",
            aunts: "mary"
          }

puts family.value?("jill")
puts family.has_value?("jill")

family_big = {  uncles: ["bob", "joe", "steve"],
                sisters: ["jane", "jill", "beth"],
                brothers: ["frank","rob","david"],
                aunts: ["mary","sally","susan"]
              }

puts family_big.values.flatten.include?("jill")
