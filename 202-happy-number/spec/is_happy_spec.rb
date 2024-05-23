require_relative '../main'

describe '#is_happy' do
  it 'should' do
    expect(is_happy(19)).to eq(true)
    expect(is_happy(2)).to eq(false)
  end
end
