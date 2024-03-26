# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  non_duplicate = nums.select { |num| nums.count(num) == 1 }
  non_duplicate[0]
end
