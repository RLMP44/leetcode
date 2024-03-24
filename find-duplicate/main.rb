# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  @seen = {}
  search(nums)
end

def search(nums)
  for num in nums
    return num if @seen[num]
    @seen[num] = true
  end
end
