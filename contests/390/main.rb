# ------ 100245. Maximum Length Substring With Two Occurrences ------ #
# Given a string s, return the maximum length of a substring
# such that it contains at most two occurrences of each character.

# @param {String} s
# @return {Integer}
def maximum_length_substring(s)
  substring = ''
  longest = 0
  s.chars.each do |char|
    if substring.count(char) >= 2
      restart_index = substring.index(char)
      substring = substring[restart_index + 1..]
    end
    substring += char
    longest = substring.size if substring.size > longest
  end
  longest
end

p(maximum_length_substring('ccbcb'))

# given a string
# convert to array
# for character in array
  # check if it is in string more than once
    # if in string more than once, start string after index of first occurence
  # add character to string

# ---------- 100258. Most Frequent IDs -------------- #
# # @param {Integer[]} nums
# # @param {Integer[]} freq
# # @return {Integer[]}
# def most_frequent_i_ds(nums, freq)
#   steps = freq.max
#   current_step = 0
#   hash = nums.map.with_index do |num, index|
#     { num => freq[index] }
#   end
#   p hash
#   steps.times do
#     hash.each do |h|
#       if hash[h.key].positive?
#         nums << h.key
#         hash[h.key] -= 1
#       end
#     end
#     current_step += 1
#   end
# end

# p(most_frequent_i_ds([2, 3, 2, 1], [3, 2, -3, 1]))

# ---- 100228. Apply Operations to Make Sum of Array Greater Than or Equal to k ---- #
# def min_operations(k)
#   count = 0
#   nums = [1]
#   return 1 if k == 1 || k == 0
#   (k - 1).times do
#       k[1..].each_with_index do |num, index|
#           num = k[index - 1] + k[index - 2]
#       end
#       count += 1
#   end

# end

# p(min_operations(11))
