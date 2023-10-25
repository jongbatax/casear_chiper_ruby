def caesar_chiper(plain, shift_num)
  chiper = ''
  plain.downcase.each_char do |c|
    chiper += if c in 'a'..'z'
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

puts caesar_chiper('What a string!', 5)
