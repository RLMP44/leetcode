require_relative '../main'

describe '#contains_duplicate' do
  it 'should return true if there are any repeats' do
    expect(contains_duplicate([1,2,3,1])).to eq(true)
    expect(contains_duplicate([1,1,1,3,3,4,3,2,4,2])).to eq(true)
  end

  it 'should return false if all elements are unique' do
    expect(contains_duplicate([1,2,3,4])).to eq(false)
    expect(contains_duplicate([1])).to eq(false)
  end
end
