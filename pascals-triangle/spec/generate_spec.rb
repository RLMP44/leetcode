require_relative '../main.rb'

describe '#generate' do
  it 'should create an array of arrays, each number is the sum of the two numbers above it' do
    expect(generate(5)).to eq([[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]])
    expect(generate(1)).to eq([[1]])
  end
end
