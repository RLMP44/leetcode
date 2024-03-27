# @param {Integer} num
# @return {String}
HASH = {
  1 => 'I',
  5 => 'V',
  10 => 'X',
  50 => 'L',
  100 => 'C',
  500 => 'D',
  1000 => 'M',
}

MULTIPLIER = {
  1 => 1,
  2 => 10,
  3 => 100,
  4 => 1000
}

NEXT = {
  'I' => ['V', 'X'],
  'X' => ['L', 'C'],
  'C' => ['D', 'M']
}

def int_to_roman(num)
  string = ''
  split_nums = num.to_s.chars
  split_nums.each_with_index do |number, index|
    number = number.to_i
    if [1, 5].include?(number)
      string += HASH[number * set_multiplier(split_nums, index)]
    elsif [4, 9].include?(number)
      p('elsif')
      # string += (HASH.key(number * set_multiplier(split_nums, index)).to_s)
    else
      p('else')
    end
  end
  string
end

def set_multiplier(split_nums, index)
  MULTIPLIER[split_nums[index..].size]
end

p(int_to_roman(1111))

# check length of number
# check if 5 or 1
# check if 4 or 9
