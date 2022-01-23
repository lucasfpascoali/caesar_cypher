# frozen_string_literal: true

class CaesarCipher
  def encrypt(string, factor, result = '')
    string.each_char do |char|
      base = char.ord < 91 ? 65 : 97
      if char.ord.between?(65, 90) || char.ord.between?(97, 122)
        rotation = (((char.ord - base) + factor) % 26) + base
        result += rotation.chr
      else
        result += char
      end
    end
    result
  end
end
