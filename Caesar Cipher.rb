
def caesar_cipher(string, shift)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'.split('') # Create alphabet array
  string = string.split('') # Create string array
  string.map! do |char|
    if alphabet.include? char.downcase # If character is a letter, convert it
      capitalize = true if char != char.downcase # Capitalize true if letter isn't lowercase.
      new_index = alphabet.find_index(char.downcase) + shift # Set new index
      new_index -= alphabet.length if new_index > alphabet.length # Fix for if new_index is larger than alphabet array
      capitalize ? alphabet[new_index].upcase : alphabet[new_index] # Return the new letter
    else # Character isn't a letter, so return the original character
      char
    end
  end
  string.join('')
end

p caesar_cipher("Very Cool", 15)