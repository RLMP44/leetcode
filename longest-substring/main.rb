# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  @checked = {}
  @longest = 0
  @run = 0
  s.chars.each_with_index do |letter, index|
    @checked[letter] ? reset : handle_non_repeat(letter)
  end
  return @longest
end

def reset
  @checked = {}
  @run = 0
end

def handle_non_repeat(letter)
  @run += 1
  @longest = @run if @run > @longest
  @checked[letter] = true
end


p(length_of_longest_substring("abcabcbb"))
