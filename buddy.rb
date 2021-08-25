def find_divisor_sum (int)
  1.upto(int).select {|num| int % num == 0 && num != int}.inject(0, :+)
end

def buddy(start, nd)
  start.upto(nd) do |num|
    n = find_divisor_sum(num)
    m = find_divisor_sum(n - 1)
    return "(#{num.to_s} #{(n - 1).to_s})" if num == m - 1
  end
  return "Nothing"
end

puts buddy(57345, 90061)
