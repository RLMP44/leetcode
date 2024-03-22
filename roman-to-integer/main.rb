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
    integer += need_reduce?(char, s, index) ? -HASH[char] : HASH[char]
  end
  integer
end

def need_reduce?(char, s, index)
  NEXT.keys.include?(char) && NEXT[char].include?(s[index + 1])
end
