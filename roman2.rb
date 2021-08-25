def solution(n)
  num_map = [[1000, 'M'], [900, 'CM'], [500, 'D'], [400, 'CD'], [100, 'C'], [90, 'XC'],
           [50, 'L'], [40, 'XL'], [10, 'X'], [9, 'IX'], [5, 'V'], [4, 'IV'], [1, 'I']]
  result = String.new
  # num_map.each { |val,numeral| puts "val --> #{val}, numeral --> #{numeral}" }
  until n == 0
    num_map.each do |val,numeral|
      puts "n = #{n}"
      puts "result = '#{result}'"
      until n < val
        puts "while loop for initiatied for n = #{n} and numeral = #{numeral}"
        result += numeral
        n -= val
      end
    end
  end
  return result
end

solution (89)
