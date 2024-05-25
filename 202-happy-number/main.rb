def is_happy(n)
  @loop = 1
  @number = n
  return true if n == 1

  while @number != 1 && @loop < 8
    squares = convert(@number.to_s.chars)
    new_number = squares.sum
    adjust_starters(new_number)
  end
  new_number == 1
end

def convert(digits)
  digits.map do |num|
    num = num.to_i
    num * num
  end
end

def adjust_starters(new_number)
  @number = new_number
  @loop += 1
end
