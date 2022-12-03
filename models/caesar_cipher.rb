module CaesarCipher
  
  LETTERS = 'abcdefghijklmnopqrstuvwxyz'

  def encrypt initial, shift
    initial = initial.downcase.split("")

    output = initial.map do |char|
      if LETTERS.include?(char)
        LETTERS[(LETTERS.index(char) + shift) % LETTERS.size]
      end
    end

  return output.join("")
    
  end

end