# ------ 100245. Maximum Length Substring With Two Occurrences ------ #
# Given a string s, return the maximum length of a substring
# such that it contains at most two occurrences of each character.

# @param {String} s
# @return {Integer}
# def maximum_length_substring(s)
#   substring = ''
#   longest = 0
#   s.chars.each_with_index do |char, index|
#     if substring.count(char) >= 2
#       restart_index = substring.index(char)
#       substring = substring[restart_index + 1..]
#     end
#     substring += char
#     longest = substring.size if substring.size > longest
#   end
#   longest
# end

# p(maximum_length_substring("ccbcb"))

# given a string
# convert to array
# for character in array
  # check if it is in string more than once
    # if in string more than once, start string after index of first occurence
  # add character to string



# ---- 100228. Apply Operations to Make Sum of Array Greater Than or Equal to k ---- #
# # @param {Integer[]} nums
# # @param {Integer[]} freq
# # @return {Integer[]}
# def most_frequent_i_ds(nums, freq)

# end
