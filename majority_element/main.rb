def majority_element(nums)
  hash = {}
  for num in nums
    hash[num] = nums.count(num) unless hash[num]
  end
  hash.find { |key, value| return key if value > (nums.length / 2)}
end
