def length_of_longest_substring(s)
  @substring = 0
  @list = ''
  run(s.chars)
  @substring
end

def run(s)
  for character in s
    handle_repeat(character) if repeat?(character)
    add_to_list(character)
    update_substring
  end
end

def update_substring
  @substring = @list.length if @list.length > @substring
end

def add_to_list(character)
  @list += character
end

def repeat?(character)
  @list.include?(character)
end

def handle_repeat(character)
  # find index of repeat in list (should just be one) and split at index
  repeat_index = @list.index(character)
  @list = @list[(repeat_index + 1)..]
end

 # When repeat, subtract index of first letter from index of current,
 # then delete all elements from array before and including first letter array[..index]

p(length_of_longest_substring("abcabcbb"))

# end actions
# always add new character to list
# if repeat, reset list to start after first instance of repeat
# adjust @substring
