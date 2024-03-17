def longest_common_prefix(strs)
  @repeats = ''
  @repeat_prefixes = []
  @current_common = ''
  return '' if strs.include?('')
  return strs[0] unless strs.count > 1
  return '' unless same_first_letter?(strs)

  compare(strs)
  @repeats = select_common_prefix
end

def compare(strs)
  for string in strs
    for str in strs
      compare_word(string, str)
      reset_current_common
    end
  end
end

def same_first_letter?(strs)
  letter = strs.first.chars.first
  same = strs.select { |string| string.start_with?(letter) }
  strs.count == same.count
end

def compare_word(string, str)
  return unless string != str

  string.chars.each_with_index do |letter, index|
    break unless string[index] == str[index]

    @current_common += letter
  end
end

def reset_current_common
  @repeat_prefixes << @current_common
  @current_common = ''
end

def select_common_prefix
  @repeat_prefixes.sort_by!(&:length)
  prefixes = @repeat_prefixes.reject { |prefix| prefix == '' }
  prefixes[0] || ''
end

p(longest_common_prefix(['reflower','flow','flight']))
