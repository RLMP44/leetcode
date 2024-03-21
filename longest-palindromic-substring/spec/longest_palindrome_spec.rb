require_relative '../main.rb'

describe '#longest_palindrome' do
  it 'should return the longest palindrome in a string' do
    expect(longest_palindrome('babad')).to eq('bab' || 'aba')
    expect(longest_palindrome('cbbd')).to eq('bb')
  end
end
