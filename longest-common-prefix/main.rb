def longest_common_prefix(strs)
  @repeats = ''
  strs.sort_by!(&:length)
  @first_word = strs[0]
  # iterate over length of shortest word
  for num in (0..@first_word.length - 1)
    # start at second word
    strs[1..].each do |str|
      return @repeats unless str[num] == @first_word[num]
    end
    # use iteration number to add current letter
    @repeats += @first_word[num]
  end
  @repeats
end

p(longest_common_prefix(['reflower','flow','flight']))
