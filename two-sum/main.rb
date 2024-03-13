# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
  checked = {}
  nums.each_with_index do |num, index|
    return [nums.index(target - num), index] if checked[nums.index(target - num)] && nums.index(target - num) != index

    checked[index] = true
  end
  not_two?(checked) ? handle_duplicate(nums, checked) : checked.keys
end

def not_two?(checked)
  checked.keys.count != 2
end

def handle_duplicate(nums, checked)
  nums.each_index.select { |num| nums[num] == checked.keys[0] }
end
