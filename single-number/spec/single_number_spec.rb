require_relative '../main.rb'

describe '#single_number' do
  it 'should return the only non-repeated number in an array' do
    expect(single_number([2,2,1])).to eq(1)
    expect(single_number([4,1,2,1,2])).to eq(4)
    expect(single_number([1])).to eq(1)
  end
end
