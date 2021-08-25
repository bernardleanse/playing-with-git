def title_case(title, minor_words = '')
  to_return = title.capitalize.downcase.split.map do |word|
    minor_words.downcase.split.include?(word) ? word : word.capitalize
  end
  return to_return
end

print title_case('is there my name is bernard', minor_words = 'my is')
