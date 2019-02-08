def get_middle(s)
  # your code here
  word_index = s.length / 2
  s.chars[word_index] if s.length.odd?
  s.chars[word_index] + s.chars[word_index + 1]
end

get_middle 'dara'

def get_middle_b(s)
    s[(s.size-1)/2..s.size/2]
  end
