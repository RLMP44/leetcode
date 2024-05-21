def remove_duplicates(nums)
  nums = nums.uniq
end

puts(remove_duplicates([1,1,2]))
puts(remove_duplicates([0,0,1,1,1,2,2,3,3,4]))
