def caesar_chiper(string, shift_num)
  plain = string.downcase.split('')
  chiper = Array.new(plain.length)

  plain.each_with_index do |c, i|
    chiper[i] = if c in 'a'..'z'
                  if c.ord + shift_num > 122
                    ((c.ord + shift_num) - 26).chr
                  else
                    (c.ord + shift_num).chr
                  end
                else
                  c
                end
  end
  chiper
end

puts caesar_chiper('What a string!', 5).join()
