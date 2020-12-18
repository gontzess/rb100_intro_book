# Use Ruby's Array method delete_if and String method start_with? to delete all
# of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |x| x.start_with?("s") }

p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |x| x.start_with?("s", "w") }

p arr


# Turn the following array into a new array that consists of strings containing
# one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into
# using Array's map and flatten methods, as well as String's split method.


a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

new_arr = a.map { |phrase| phrase.split }
new_arr = new_arr.flatten

p new_arr
