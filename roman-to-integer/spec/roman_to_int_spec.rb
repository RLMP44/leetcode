require_relative '../main.rb'

describe '#roman_to_int' do
  it 'should accurately convert a roman numeral to an integer' do
    expect(roman_to_int('III')).to eq(3)
    expect(roman_to_int('LVIII')).to eq(58)
    expect(roman_to_int('MCMXCIV')).to eq(1994)
    expect(roman_to_int('ILIV')).to eq(44)
    expect(roman_to_int('CCCLXII')).to eq(362)
  end
end
