require_relative '../main.rb'

describe '#longest_common_prefix' do
  it 'should return the longest common prefix in an array' do
    expect(longest_common_prefix(["flower","flow","flight"])).to eq("fl")
    expect(longest_common_prefix(["dog","racecar","car"])).to eq("")
  end
end
