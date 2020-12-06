# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but
# in a different order.

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def anograms(arr_words)
  # creates new array from words with sorted characters
  arr_words_sorted = arr_words.map { |word| word.downcase.chars.sort.join }
  k = arr_words_sorted.length - 1
  anog = Hash.new
  # check each sorted value against the other sorted values
  for i in 0..k
    for j in 0..k
      if i == j
        next
      elsif arr_words_sorted[i] == arr_words_sorted[j]
        if !anog.key?(arr_words_sorted[i].to_sym)
          anog[arr_words_sorted[i].to_sym] = []
        anog[arr_words_sorted[i].to_sym].push(words[i]).push(words[k])
      else
        next
      end
    end
  end
  return anog
end

#p anograms(words)



=begin

def anograms(arr_words)
  # creates new hash from words array with symbols for keys and sorted characters for values
  hash_words = Hash[arr_words.map { |word| [word.to_sym, word.downcase.chars.sort.join] } ]
  # check each value against the other values .... recusion??
  arr_anog = []
  #p hash_words
  hash_words.values.each_index do |index|
    value1 = hash_words.values[index]
    value2 = hash_words.values[index + 1]
    key1 = hash_words.key(value1)
    key2 = hash_words.key(value2)
    #puts key1
    #puts key2
    #puts value1
    #puts value2
    if key1 != key2 && value1 == value2
    #  if !(arr_anog.flatten.include?(key1))
        arr_anog.push([key1, key2])
    #  else #!arr_anog.flatten.include?(key2)
    #    loc = arr_anog.index(key1)
    #    arr_anog[loc].push(key2)
    #  end
    end
  end
  arr_anog
  #arr_anog.each { |x| p x }
end




def anograms(arr_words)
  # creates new hash from words array with symbols for keys and sorted characters for values
  hash_words = Hash[arr_words.map { |word| [word.to_sym, word.downcase.chars.sort.join] } ]
  # check each value against the other values .... recusion??
  arr_anog = []
  hash_words.each do |key1, value1|
    hash_words.each do |key2, value2|
      if key1 != key2 && value1 == value2
        if !arr_anog.flatten.include?(key1)
          arr_anog.push([key1, key2])
        else #!arr_anog.flatten.include?(key2)
          index = arr_anog.index(key1)
          arr_anog[index].push(key2)
        end
      end
    end
  end
  arr_anog.each { |x| p x }
end
=end
