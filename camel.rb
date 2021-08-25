require 'rspec/autorun'

def to_camel_case(str)
  return '' if str.length == 0
  word_arr = str.gsub(/-|_/, " ").split
  camel = Array.new
  camel << word_arr[0]
  word_arr.delete_at(0)
  word_arr.map!{|word| camel << word.capitalize}
  return camel.join
end

describe "to_camel_case" do
  it "should give you camel case" do
    # expect(to_camel_case('')).to eq('')
    expect(to_camel_case("the_stealth_warrior")).to eq("theStealthWarrior")
    expect(to_camel_case("The-Stealth-Warrior")).to eq("TheStealthWarrior")
    expect(to_camel_case("A-B-C")).to eq("ABC")
  end
end
