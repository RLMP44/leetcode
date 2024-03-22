# @param {String} s
# @return {Integer}

HASH = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000,
}

NEXT = {
  'I' => ['V', 'X'],
  'X' => ['L', 'C'],
  'C' => ['D', 'M']
}

def roman_to_int(s)
  integer = 0
  s.chars.each_with_index do |char, index|
    reduce_next_letter(char, index) if NEXT.keys.include?(char) && NEXT[char].include?(s[index + 1])
    integer += HASH[char]
  end
  integer
end

def reduce_next_letter(char, index)
 p('reduce')
end

# have a string
# iterate
# if character is V or X and I is in front, character value - 1
# if character is L or C and X is in front, character value - 10
# if character is D or M and C is in front, character value - 100