# require 'rspec/autorun'

def solution(n)
    values = {
      'I' => 1,
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000
    }
    values_greater_than_n = values.select {|key, val| val >= n }
    values_less_than_n = values.select {|key, val| val <= n}
    puts "greater than n's --> #{values_greater_than_n}"
    puts "smaller than n's --> #{values_less_than_n}"









    # to build soln start linear and detect a triple
    # need to think of a way to find between which two symbols the number lies
    # puts values.keys.class
    # start_numeral = values.keys.select.with_index {|key, i| values[key] <= n && n <= values[values.keys[i+1]]}[0]


    # numeral_array = Array.new
    # numeral_array << start_numeral


  end

solution(48)
# describe 'solution' do
#   it 'should give you the roman numeral of given integer' do
#     expect(solution()).to eq()
#     expect(solution()).to eq()
#     expect(solution()).to eq()
#     expect(solution()).to eq()
#     expect(solution()).to eq()
#     expect(solution()).to eq()
#     expect(solution()).to eq()
#     expect(solution()).to eq()
#   end
# end
