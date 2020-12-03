def all_caps_long(words)
  if words.length > 10
    words.upcase
  else
    words
  end
end

puts all_caps_long("hiya you are a butt")
puts all_caps_long("hiya")
