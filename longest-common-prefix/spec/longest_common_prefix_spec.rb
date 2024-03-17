require_relative '../main.rb'

describe '#longest_common_prefix' do
  it 'should return the longest common prefix in an array' do
    expect(longest_common_prefix(['flower','flow','flight'])).to eq('fl')
    expect(longest_common_prefix(['dog','racecar','car'])).to eq('')
    expect(longest_common_prefix([''])).to eq('')
    expect(longest_common_prefix(['a'])).to eq('a')
    expect(longest_common_prefix(['', ''])).to eq('')
    expect(longest_common_prefix(['reflower','flow','flight'])).to eq('')
    expect(longest_common_prefix(['flower','flower', 'flower', 'flower'])).to eq('flower')
  end
end
