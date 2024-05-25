def is_happy(n)
  seen = []
  num = n
  loop do
    num = calculate(num)
    return true if num == 1
    return false if seen.include?(num)

    seen << num
  end
  num == 1
end

def calculate(n)
  squares = n.digits.map { |num| num * num }
  squares.sum
end
