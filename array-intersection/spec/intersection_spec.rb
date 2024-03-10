require_relative '../main.rb'

describe '#intersection' do
  it 'should return numbers that intersect' do
    expect(intersection([1, 2, 2, 1], [2, 2])).to eq([2])
    expect(intersection([4, 9, 5], [9, 4, 9, 8, 4]).sort).to eq([9, 4].sort)
  end
end
