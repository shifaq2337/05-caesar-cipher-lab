def caesar_encode(string,offset)
  alph_down = [*('a'..'z')]
  alph_up = [*('A'..'Z')]
  string.split("").collect do |character|
    if alph_down.include?character
      new = alph_down[(alph_down.index(character)+offset)%26]
    elsif alph_up.include?character
      new = alph_up[(alph_up.index(character)+offset)%26]
    else
      character
    end
  end.join("")
end


def caesar_decode(string,offset)
    caesar_encode(string, offset*-1)
end



