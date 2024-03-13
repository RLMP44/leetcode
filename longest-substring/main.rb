# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  @checked = {}
  @longest = 0
  s.chars.each do |letter|
    @checked[letter] ? reset(letter) : handle_non_repeat(letter)
  end
  return @longest
end

def reset(letter)
  @checked = {}
  @checked[letter] = true
end

def handle_non_repeat(letter)
  @checked[letter] = true
  @longest = @checked.count if @checked.count > @longest
end


p(length_of_longest_substring("aab"))
