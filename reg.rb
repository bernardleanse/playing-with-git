string = 'the quick brown q fox jumps over 12 lazy dogs'

p string =~ /Q/i
#adding //i to the end of regex makes it case insensitive


my_reg = /woi
  |
oi
  |
yehh
/

puts my_reg.match?("oi")
