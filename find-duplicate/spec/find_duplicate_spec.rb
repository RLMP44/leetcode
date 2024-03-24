require_relative '../main'

describe '#find_duplicate' do
  it 'should return the number that is duplicated' do
    expect(find_duplicate([1,3,4,2,2])).to eq(2)
    expect(find_duplicate([3,1,3,4,2])).to eq(3)
    expect(find_duplicate([3,3,3,3,3])).to eq(3)
  end
end
