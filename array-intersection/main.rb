# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  intersect = []
  nums1.each do |num|
      intersect << num if nums2.include?(num)
  end
  intersect
end
