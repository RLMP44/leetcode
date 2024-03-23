require_relative '../main.rb'

describe '#my_sqrt' do
  it 'should return the (rounded down) square root of an integer' do
    expect(my_sqrt(4)).to eq(2)
    expect(my_sqrt(8)).to eq(2)
    expect(my_sqrt(16)).to eq(4)
    expect(my_sqrt(9)).to eq(3)
    expect(my_sqrt(1300)).to eq(36)
  end
end
