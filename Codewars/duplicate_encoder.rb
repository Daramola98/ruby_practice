def duplicate_encode(word)
  # your code here
  word.downcase!
  new_word = ''
  word.each_char do |c|
    number_of_times_word_appears = word.count c
    new_word += ')' if number_of_times_word_appears > 1
    new_word += '(' unless number_of_times_word_appears > 1
  end
  new_word
end

puts duplicate_encode 'Success'
