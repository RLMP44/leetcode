require_relative '../main'

describe '#int_to_roman' do
  it 'should convert integers to roman numerals' do
    expect(int_to_roman(3)).to eq('III')
    expect(int_to_roman(58)).to eq('LVIII')
    expect(int_to_roman(1994)).to eq('MCMXCIV')
  end
end
