def find_it(seq)
  # your code here
  odd_number_occurence = seq.select do |number|
    number_of_occurences = seq.count number
    number_of_occurences.odd?
  end
  odd_number_occurence[0]
end

def find_it_best_practice(seq)
  seq.detect { |n| seq.count(n).odd? }
end

puts find_it [20, 1, -1, 2, -2, 3, 3, 5, 5, 1, 2, 4, 20, 4, -1, -2, 5]
