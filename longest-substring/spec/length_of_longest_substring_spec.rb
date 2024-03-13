require_relative '../main.rb'

describe '#length_of_longest_substring' do
  it 'should return the length of the longest substring' do
    expect(length_of_longest_substring("abcabcbb")).to eq(3)
    expect(length_of_longest_substring("bbbbb")).to eq(1)
    expect(length_of_longest_substring("pwwkew")).to eq(3)
    expect(length_of_longest_substring("aab")).to eq(2)
  end
end
