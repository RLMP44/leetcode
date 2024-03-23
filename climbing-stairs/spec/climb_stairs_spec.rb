require_relative '../main.rb'

describe '#climb_stairs' do
  it 'should return the number of unique combinations' do
    expect(climb_stairs(4)).to eq(5)
    expect(climb_stairs(2)).to eq(2)
    expect(climb_stairs(3)).to eq(3)
  end
end
