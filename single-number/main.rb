# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  hash = {}
  nums.each do |num|
    hash[num] ? hash[num] += 1 : hash[num] = 1
  end
  hash.key(1)
end
