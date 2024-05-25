def is_happy(n)
  loop = 1
  number = n
  return true if n == 1

  while number != 1 && loop < 8
    digits = number.to_s.chars
    squares = convert(digits)
    new_number = squares.sum
    number = new_number
    loop += 1
  end
  new_number == 1
end

def convert(digits)
  digits.map do |num|
    num = num.to_i
    num * num
  end
end
