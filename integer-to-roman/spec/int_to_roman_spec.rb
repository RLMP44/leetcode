require_relative '../main'

describe '#int_to_roman' do
  it 'should convert integers to roman numerals' do
    expect(int_to_roman(3)).to eq('III')
    expect(int_to_roman(58)).to eq('LVIII')
    expect(int_to_roman(1883)).to eq('MDCCCLXXXIII')
    expect(int_to_roman(1994)).to eq('MCMXCIV')
  end

  it 'should convert 5 and 1 properly' do
    expect(int_to_roman(5)).to eq('V')
    expect(int_to_roman(55)).to eq('LV')
    expect(int_to_roman(1111)).to eq('MCXI')
  end

  it 'should convert 4 and 9 properly' do
    expect(int_to_roman(4)).to eq('IV')
    expect(int_to_roman(49)).to eq('XLIX')
    expect(int_to_roman(944)).to eq('CMXLIV')
  end
end
