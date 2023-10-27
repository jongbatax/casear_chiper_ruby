def substrings(text, dictionary)
  arr_text = text.downcase.split(' ')
  hash_text = {}
  freq = 0

  dictionary.each do |dict|
    arr_text.each do |word|
      word = word.chomp("'s").gsub(/[^a-z]/i, '')
      freq += 1 if word.include?(dict)
    end
    hash_text[dict] = freq if freq != 0
    freq = 0
  end
  hash_text
end

# "How's it going ?".gsub(/[^a-zA-Z\']/i,'')
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings("Howdy partner, sit down! How's it going ?", dictionary)
# puts dictionary
puts substrings('below', dictionary)
