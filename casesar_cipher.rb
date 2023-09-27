# Takes a string and turns it into an array
def caesar_cipher(text, number)
  array = text.split('')
  # Target each array element and turn it into it's ascii equivalent
  array.map! { |letter| letter.ord }
  # adding the number variable depending on the ascii number
  array.map! do |an|
    # if number between 65 and 90 (uppercase letters)
    if 65 <= an && an <= 90
      if an + number <= 90
        an + number
      else
        an - 26 + number
      end
    # if number between 97 and 122
    elsif 97 <= an && an <= 122
      if an + number <= 122
        an + number
      else
        an - 26 + number
      end
    else
      an
    end
  end
  # change the changed number back into string - char
  final_array = array.map { |letter| letter.chr }
  # join the letter back into a string
  final_array = final_array.join
  # print the string back
  puts final_array
end

caesar_cipher('What a string!', 5)
