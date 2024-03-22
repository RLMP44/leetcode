FIZZ = 3
BUZZ = 5

def fizz_buzz(n)
  array = []
  (1..n).to_a.each do |num|
    array << generate_result(num)
  end
  array
end

def generate_result(num)
  res = ''
  res += 'Fizz' if (num % FIZZ).zero?
  res += 'Buzz' if (num % BUZZ).zero?
  res == '' ? num.to_s : res
end
