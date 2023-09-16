def caesar_cipher(string, shift = 1)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]

  
  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  encrypter = non_caps.merge(caps)
  
  
  string.chars.map { |c| encrypter.fetch(c, c) }.join
end

p caesar_cipher("What a string!", 5)