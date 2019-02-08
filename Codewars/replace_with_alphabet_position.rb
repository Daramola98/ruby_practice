def alphabet_position(text)
  text.gsub!(/[^a-zA-Z]/, '')
  text.upcase!
  position = []
  text.each_codepoint do |code|
    position << (code - 64).to_s
  end
  position.join(' ')
end
