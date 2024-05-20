def search_insert(nums, target)
  nums.include?(target) ? nums.index(target) : insert_index(nums, target)
end

def insert_index(nums, target)
  last_lesser_number = nums.select { |num| num < target }
  index = nums.index(last_lesser_number[-1])
  index ? index + 1 : 0
end

puts(search_insert([1, 3, 5, 6], 5))
puts(search_insert([1, 3, 5, 6], 2))
puts(search_insert([1, 3, 5, 6], 7))
puts(search_insert([1, 3, 5], 4))
