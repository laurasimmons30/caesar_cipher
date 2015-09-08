# Write code, in your choice of language, that takes as input a string and integer shift 
# and returns that string encoded using a basic Caesar cipher

def caesar_cipher(string, integer)
  original_alphabet_array = ('A'..'Z').to_a
  cipher_alphabet_array = ('A'..'Z').to_a
  integer.times {cipher_alphabet_array.unshift(cipher_alphabet_array.pop)}

  encrypted_string = ''
  check_array = string.split('')
  check_array.each do |letter|
    if letter.match(/\W/)
      encrypted_string << letter
    else
      new_letter =  original_alphabet_array[cipher_alphabet_array.index(letter.upcase)]
      new_letter.downcase! if letter == letter.downcase
      encrypted_string << new_letter
      # encrypted_string << original_alphabet_array[cipher_alphabet_array.index(letter.upcase)]
    end
  end
  encrypted_string
end
