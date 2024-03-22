require_relative '../main.rb'

describe '#largest_number' do
  it 'should return the largest number' do
    expect(largest_number([10,2])).to eq("210")
    expect(largest_number([3,30,34,5,9])).to eq("9534330")
  end
end
