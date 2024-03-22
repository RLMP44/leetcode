# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
  final = []
  sorted = []
  (1..9).to_a.each do |num|
    sorted = nums.select { |n| n.to_s.start_with?(num.to_s) }
    sorted.reverse!
    final << sorted
    sorted = []
  end
  return final.reverse!.flatten!.join
end

p(largest_number([4,3,30,34,5,9]))
