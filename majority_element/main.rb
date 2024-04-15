def majority_element(nums)
  hash = {}
  nums.each do |num|
    hash[num] = nums.count(num) unless hash[num]
  end
  hash.find { |key, value| return key if value > (nums.length / 2)}
end
