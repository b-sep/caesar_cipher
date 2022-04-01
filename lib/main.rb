def caesar_cipher(string, factor)

  alphabect_lower = ('a'..'z').to_a
  alhabect_up = ('A'..'Z').to_a
  cipher = []

  string.split('').map do |chr|
    if alphabect_lower.include?(chr)
      index = alphabect_lower.index(chr)
      cipher << chr = alphabect_lower[(index+factor) % 26]
    elsif alhabect_up.include?(chr)
      index = alhabect_up.index(chr)
      cipher << chr = alhabect_up[(index+factor) % 26]
    else
      cipher << chr
    end
  end

  p cipher.join

end

caesar_cipher('What a string!', 5)