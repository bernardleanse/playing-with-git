require 'rspec/autorun'

class String
  def is_int?
    !!(self =~ /\A[-+]?[0-9]+\z/)
  end

  def begins_with_0?
    init_len = self.length
    return true if self.to_i.to_s.length != init_len
    return false
  end
end

def is_valid_IP(str)
    return false if str.split('.').length != 4
    str.split('.').each do |num|
      return false if num.to_i < 0 || num.to_i > 255
      return false unless num.is_int?
      return false if num.begins_with_0?
    end
    return true
end




describe 'is_valid_IP' do
  it 'should return true if ip is valid' do
    expect(is_valid_IP('12.255.56.1')).to      eq(true)
    expect(is_valid_IP('')).to                 eq(false)
    expect(is_valid_IP('abc.def.ghi.jkl')).to  eq(false)
    expect(is_valid_IP('123.456.789.0')).to    eq(false)
    expect(is_valid_IP('12.34.56')).to         eq(false)
    expect(is_valid_IP('12.34.56 .1')).to      eq(false)
    expect(is_valid_IP('12.34.56.-1')).to      eq(false)
    expect(is_valid_IP('123.045.067.089')).to  eq(false)
    expect(is_valid_IP('127.1.1.0')).to        eq(true)
    expect(is_valid_IP('0.0.0.0')).to          eq(true)
    expect(is_valid_IP('0.34.82.53')).to       eq(true)
    expect(is_valid_IP('192.168.1.300')).to    eq(false)
  end
end
