class String
  def includes_letters?
    return true if 'abcdefghijklmnopqrstuvwxyz'.include? self.downcase
    return false
  end

  def give_alpha_pos
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    alphabet_with_positions = alphabet.chars.zip(1.upto(alphabet.length))
    alphabet_with_positions.each {|ch, pos| return pos if ch == self.downcase }
  end
end


def alphabet_position(text)
  text.chars.select{|ch| ch.includes_letters?}.map{|ch| ch.give_alpha_pos}.join(" ")
end


puts alphabet_position("The sunset sets at twelve o' clock.")
