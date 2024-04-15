require_relative '../main'

describe '#majority_element' do
  it 'should return the majority' do
    expect(majority_element([3, 2, 3])).to eq(3)
    expect(majority_element([2, 2, 1, 1, 1, 2, 2])).to eq(2)
  end
end
