# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  intersect = []
  for num in nums1
      intersect << num if nums2.include?(num) && !intersect.include?(num)
  end
  intersect
end
