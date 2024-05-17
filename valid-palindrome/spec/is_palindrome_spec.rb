require_relative '../main'

describe '#is_palindrome' do
  it 'should return true if a string is a palindrome' do
    expect(is_palindrome("A man, a plan, a canal: Panama")).to eq(true)
    expect(is_palindrome(" ")).to eq(true)
  end

  it 'should return false if a string is not a palindrome' do
    expect(is_palindrome("race a car")).to eq(false)
  end
end
