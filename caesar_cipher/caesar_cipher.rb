def caesar_cipher(input_string, caesar_shift)
  char_array = input_string.split('')
  # Convert each character to its ASCII value
  ascii_array = []
  char_array.each { |character| ascii_array.push(character.ord) }
  shifted_array = []
  ascii_array.each do |val|
    if val.between?(65, 90)
      # Wrap around to A for uppercase characters
      new_val = val + caesar_shift
      new_val -= 26 if new_val > 90
      shifted_array.push(new_val.to_i.chr)
    elsif val.between?(97, 122)
      # Wrap around to a for lowercase characters
      new_val = val + caesar_shift
      new_val -= 26 if new_val > 122
      shifted_array.push(new_val.to_i.chr)
    else
      # Ignore special characters
      shifted_array.push(val.to_i.chr)
    end
  end
  shifted_array.join('')
end
p caesar_cipher('What a string!', 5)
