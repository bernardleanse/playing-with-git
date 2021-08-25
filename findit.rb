def find_it(seq)
  seq.uniq.select{|num| seq.count(num) % 2 != 0}
end

puts find_it([5])
