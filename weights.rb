def weightlist_to_valist(strng)
  strng.split.map { |num| num.chars.map { |digit| digit.to_i }.inject(0, :+) }
end

def order_weight(strng)
  pairs = weightlist_to_valist(strng).zip(strng.split).sort
  puts "pairs =  #{pairs}"
  pairs.map{|val, weight| weight}
end

print order_weight("103 123 60 4444 99 2000") # -------> "2000 103 123 4444 99"

# Each weight has to store an associated sum of digits and needs to be sorted by that
