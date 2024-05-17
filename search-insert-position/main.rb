def search_insert(nums, target)
  nums.include?(target) ? nums.index(target) : insert_index(nums, target)
end

def insert_index(nums, target)
  nums.each_with_index do |num, index|
    if nums[index + 1] && target > num && target < nums[index + 1]
      return index + 1
    elsif target < nums[0]
      return 0
    else
      return nums.count
    end
  end
end

puts(search_insert([1,3,5,6], 5))
puts(search_insert([1,3,5,6], 2))
puts(search_insert([1,3,5,6], 7))
puts(search_insert([1,3,5], 4))
