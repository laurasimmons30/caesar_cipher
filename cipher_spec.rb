require 'rspec'
require_relative 'caesar_cipher'

describe '#caesar_cipher' do 
  it "requires an input of a string and integer" do 
    expect{caesar_cipher.validate_arguments(nil)}.to raise_error(ArgumentError) 
    expect{caesar_cipher.validate_arguments("word")}.to raise_error(ArgumentError)
  end

  it 'the encrypted to the shift equal to the inputted integer argument' do
    original_string = "Hello, my name is Laura. My dog's name is Zoo!"
    #shift of 3
    encrypted_string1 = "Khoor, pb qdph lv odxud. pb grj'v qdph lv Crr!"
    # shift of 35
    encrypted_string2 = "Qnuux, vh wjvn rb ujdaj. vh mxp'b wjvn rb Ixx!"

    expect(caesar_cipher(original_string, 3)).to eq(encrypted_string1)
    expect(caesar_cipher(original_string, 35)).to eq(encrypted_string2)
  end
end
