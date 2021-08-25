def  first_non_repeating_letter(s)
  return "" if s.length == 0
  ind_a = s.downcase.chars.map.with_index do |ch, i|
    i unless s.downcase.count(ch) > 1
  end
  return s[ind_a.compact[0]]
end

puts first_non_repeating_letter('sTress')
puts first_non_repeating_letter('moonmen')
