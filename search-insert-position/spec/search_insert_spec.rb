require_relative '../main'

describe '#search_insert' do
  it 'should return the index of a found number' do
    expect(search_insert([1,3,5,6], 5)).to eq(2)
  end

  it 'should return the index where an unfound number should go' do
    expect(search_insert([1,3,5,6], 2)).to eq(1)
    expect(search_insert([1,3,5,6], 7)).to eq(4)
    expect(search_insert([1,3,5,6], 0)).to eq(0)
  end
end
