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
  for i in 0..k do
    for j in 0..k do
      if i != j && arr_words_sorted[i] == arr_words_sorted[j]
        key_i = arr_words_sorted[i].to_sym
        if !anog.key?(key_i)
          anog[key_i] = []
        end
        anog[key_i].push(arr_words[i])
      end
    end
  end
  anog.each_value do |arr|
    arr.uniq!
    p arr
  end
end

anograms(words)
