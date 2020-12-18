# Create a Hash, with one key-value pair, using both Ruby syntax styles.
hash1 = { :color => "red" }
hash2 = { color: "red" }


# Suppose you have a hash h = {a:1, b:2, c:3, d:4}
h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
h[:b]
# 2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
# 3. Remove all key:value pairs whose value is less than 3.5
h.delete_if { |k, v| v < 3.5 }
#p h

# Can hash values be arrays? Can you have an array of hashes? (give examples)

# Yes. Hash with arrays as values
hash_a = { winter: ["Jan", "Feb", "Mar"], fall: ["Sept", "Oct", "Nov"] }
p hash_a

# Yes. Array of hashes
arr_a = [ [0, 1, 2, 3], hash_a ]
p arr_a
