# @param {Integer} num
# @return {String}
HASH = {
  1 => 'I',
  5 => 'V',
  10 => 'X',
  50 => 'L',
  100 => 'C',
  500 => 'D',
  1000 => 'M'
}

MULTIPLIER = {
  1 => 1,
  2 => 10,
  3 => 100,
  4 => 1000
}

PREVIOUS = {
  'V' => 'I',
  'X' => 'I',
  'L' => 'X',
  'C' => 'X',
  'D' => 'C',
  'M' => 'C'
}

def int_to_roman(num)
  @string = ''
  calculate(num.to_s.chars)
  @string
end

def set_multiplier(split_nums, index)
  MULTIPLIER[split_nums[index..].size]
end

def calculate(split_nums)
  split_nums.each_with_index do |number, index|
    number = number.to_i
    @base_number = set_base_number(number)
    if [1, 5].include?(number)
      @string += first_numeral(split_nums, index)
    elsif [4, 9].include?(number)
      @string += PREVIOUS[first_numeral(split_nums, index)]
      @string += first_numeral(split_nums, index)
    elsif number < 5
      number.times { @string += repeat_numerals(split_nums, index) }
    elsif number > 5
      @string += first_numeral(split_nums, index)
      (number - 5).times do
        @string += repeat_numerals(split_nums, index)
      end
    end
  end
end

def repeat_numerals(split_nums, index)
  HASH[set_multiplier(split_nums, index)]
end

def first_numeral(split_nums, index)
  HASH[@base_number * set_multiplier(split_nums, index)]
end

def calculated(split_nums, index)
  HASH[(@adjusted_base * set_multiplier(split_nums, index))]
end

def set_base_number(number)
  if [4, 9].include?(number)
    number + 1
  elsif [1, 5].include?(number)
    number
  elsif number > 5
    5
  else
    1
  end
end

p(int_to_roman(483))

# check length of number
# check if 5 or 1
# check if 4 or 9
