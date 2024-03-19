def length_of_longest_substring(s)
  @substring = 0
  @list = ''
  run(s.chars)
end

def run(s)
  s.each_with_index do |character, index|
    handle_repeat(character, index) if repeat?(character)
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

def handle_repeat(character, index)
  # find index of repeat in list (should just be one) and split at index
  repeat_index = @list.index(character)
  p("repeat at #{repeat_index}")
  p("current index is #{index}")
  diff = index - repeat_index
  @substring = diff if diff > @substring
  i = index + 1
  p(@list)
  p(@list[i..])
  @list = @list[(index + 1)..]
end

 # When repeat, subtract index of first letter from index of current,
 # then delete all elements from array before and including first letter array[..index]

p(length_of_longest_substring("abcabcbb"))

# end actions
# always add new character to list
# if repeat, reset list to start after first instance of repeat
# adjust @substring
