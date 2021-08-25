# def round_args(*args)
#   args.map! do |arg|
#     arg = 0 if arg < 0
#     arg = 255 if arg > 255
#     arg
#   end
#   return args
# end
#
# def num_to_hex(num)
#   hex_int = num.to_s(16)
#   return hex_int.upcase
# end
#
# def rgb(r, g, b)
#   rgbargs = round_args(r, g, b)
#   hexa = Array.new
#   rgbargs.each do |num|
#     hexa << num_to_hex(num / 16)
#     hexa << num_to_hex(num % 16)
#   end
#   return hexa.join
# end

#
# puts rgb(222, 34, 22)

# def calculate_years(principal, interest, tax, desired)
#   years = 0
#   while principal < desired
#     aquired_p = principal * interest
#     after_tax_p = aquired_p -= aquired_p * tax
#     principal += after_tax_p
#     years += 1
#   end
#   return years
# end
#
# puts calculate_years(1000, 0.05, 0.18, 1100)

# def domain_name(url)
#   key_words = 'https.www.com.org'
#   url.gsub("://", '*').gsub(".", '*').split('*').reject {|word| key_words.include? word}[0]
# end
#
# puts domain_name("http://google.com")# "google"
# puts domain_name("http://google.co.jp") # "google"
# puts domain_name("www.xakep.ru")# "xakep"
# puts domain_name("https://youtube.com")# "youtube"

def permutations(string)
  result = Array.new
  num_perms = string.length.downto(1).inject(:*)
  result << string
  until result.length == num_perms
    result << string.chars.shuffle.join("")
    result.uniq!
  end
  return result
end

print permutations('abc')
