require 'prime'
require 'rspec/autorun'

def isolate_primes_in_range(a, b)
  a.upto(b).select {|num| num.prime? }
end

def gap(g, m, n)
  primes = isolate_primes_in_range(m, n)
  result = []
  primes.each.with_index do |num, i|
    result << num and result << num.next if num.next - num == g
  end
  result
end

describe("Gap") do
    it("Basic tests") do
        expect(gap(2,100,110)).to   eq([101, 103])
        expect(gap(4,100,110)).to   eq([103, 107])
        expect(gap(6,100,110)).to   eq(nil)
        expect(gap(8,300,400)).to   eq([359, 367])
        expect(gap(10,300,400)).to   eq([337, 347])
    end
end
