def length_of_longest_substring(s)
  @substring = 0
  @list = ''
  run(s.chars)
  @substring
end

def run(s)
  # for loop has shorter runtime than .each method
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
  # find index of repeat in list (should just be one)
  repeat_index = @list.index(character)
  # reset array starting after index of first instance of repeat
  @list = @list[(repeat_index + 1)..]
end

p(length_of_longest_substring('abcabcbb'))

# ----------------------- end actions -------------------------- #
# always add new character to list
# if repeat, reset list to start after first instance of repeat
# adjust @substring
