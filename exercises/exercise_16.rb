# In exercise 11, we manually set the contacts hash values one by one. Now,
# programmatically loop or iterate over the contacts hash from exercise 11, and
# populate the associated data from the contact_data array. Hint: you will
# probably need to iterate over ([:email, :address, :phone]), and some helpful
# methods might be the Array shift and first methods.
# As a bonus, see if you can figure out how to make it work with multiple
# entries in the contacts hash.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"],
            ["mary@email.com", "444 Around Bend", "666-666-6666"],
            ["chris@email.com", "20 Post Road", "293-387-9031"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}, "Mary Brown" => {},
        "Chris Green" => {}}

keys = [:email, :address, :phone]


=begin
## first attempt

arr_joe = []
arr_sally = []
arr_mary = []
arr_chris = []

i = 0
keys.each do |k|
  arr_joe.push([k, contact_data[0][i]])
  arr_sally.push([k, contact_data[1][i]])
  arr_mary.push([k, contact_data[2][i]])
  arr_chris.push([k, contact_data[3][i]])
  i += 1
end

contacts["Joe Smith"] = arr_joe.to_h
contacts["Sally Johnson"] = arr_sally.to_h
contacts["Mary Brown"] = arr_mary.to_h
contacts["Chris Green"] = arr_chris.to_h

contacts.each { |person| p person }
=end


## revised attempt after learning you can use each_with_index on hashes

contacts.each_with_index do |(person, hash), i|
  keys.each_with_index do |key, j|
    hash[key] = contact_data[i][j]
  end
end

contacts.each { |person| p person }
