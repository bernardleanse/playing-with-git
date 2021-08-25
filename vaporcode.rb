def vaporcode(string)
  string.split.join.upcase.chars.join("  ")
end

puts vaporcode('hello')
