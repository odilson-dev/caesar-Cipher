str = "Bmfy k jgfgjh"

alphabet = ("a".."z").to_a
alphabetMaj = ("A".."Z").to_a

str = str.each_char.map{|al| al.ord - ?a.ord + 1}

str2 = str.map do |index| 
  if index == -64
    " "
  elsif index <= -6
    alphabetMaj[index -1 + 32]
  else
    new_index = index - 1 + 5

    if new_index > 26 
       new_index -= 26
    end
    alphabet[new_index]
    
  end
end

puts str2.to_s