require_relative '../main.rb'

describe '#fizz_buzz' do
  it 'should return FizzBuzz when num is divisible by 3 and 5' do
    expect(fizz_buzz(15)).to eq(["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"])
  end

  it 'should return Fizz when num is a multiple of 5' do
    expect(fizz_buzz(5)).to eq(["1","2","Fizz","4","Buzz"])
  end

  it 'should return Buzz when num is a multiple of 3' do
    expect(fizz_buzz(3)).to eq(["1","2","Fizz"])
  end
end
