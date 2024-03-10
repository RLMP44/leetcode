# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  indexes = nums.each_with_index.map do |num, index|
    nums.each_with_index do |n, i|
      return [index, i] if index != i && num + n == target
    end
  end
  indexes
end
