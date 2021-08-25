def replace_13_down_aphabet(ch)
  alpha = 'abcdefghijklmnopqrstuvwxyz'
  rot = 'nopqrstuvwxyzabcdefghijklm'
  return ch unless alpha.include? ch.downcase
  new_ch = rot[alpha.index(ch.downcase)]
  return new_ch unless ch.downcase != ch
  return new_ch.upcase
end

def rot13(message)
  message.chars.map! {|ch| replace_13_down_aphabet(ch)}.join
end

# puts rot13('EBG13 rknzcyr.')

p rot13('hEllo')
