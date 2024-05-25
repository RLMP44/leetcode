require_relative '../main'

describe '#is_happy' do
  it 'should return true for processes that end in 1' do
    expect(is_happy(19)).to eq(true)
  end

  it 'should return false for processes that do not end in 1 or repeat endlessly' do
    expect(is_happy(2)).to eq(false)
  end
end
