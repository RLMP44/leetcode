require_relative '../main'

describe '#remove_duplicates' do
  it 'should remove duplicates in place' do
    expect(remove_duplicates([1,1,2]).to eq(2))
    expect(remove_duplicates([0,0,1,1,1,2,2,3,3,4]).to eq(5))
  end
end
