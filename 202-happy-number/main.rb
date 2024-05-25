def is_happy(n)
  seen = []
  num = n
  loop do
    new_num = calculate(num)
    return true if new_num == 1
    return false if seen.include?(new_num)

    seen << new_num
    num = new_num
  end
  new_num == 1
end

def calculate(n)
  squares = n.digits.map { |num| num * num }
  squares.sum
end

p is_happy(19)

# def convert(digits)
#   digits.map do |num|
#     num = num.to_i
#     num * num
#   end
# end

# def adjust_starters(new_number)
#   @number = new_number
#   @loop += 1
# end
