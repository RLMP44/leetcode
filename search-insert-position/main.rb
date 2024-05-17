def search_insert(nums, target)
  nums.include?(target) ? nums.index(target) : insert_index(nums, target)
end

def insert_index(nums, target)
  nums.each_with_index do |num, index|
    return (index + 1) if target > num && target < nums[index + 1]
  end
end
