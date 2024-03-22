# 問題→7以上7777777以下の7の倍数を全て書き出したとき、数字「7」は何回現れるか。

# divisible_nums = (7..7_777_777).to_a.select { |num| (num % 7).zero? }
# count = divisible_nums.join('').count('7')
# p(count)

# 正解→777784

# string = 'YZASLKJASDFWOKWOAYZSDFXODXOIXYZLKXJUIDLUWWYZWXOLAYZXOUXYZPWWL'
# p(string)
# string.gsub!('W', '')
# p(string)
# string.chars.each_with_index do |letter, index|
#   string[index] = 'E' if letter == 'X' && string[(index + 3)] != 'X'
# end
# p(string)
# string.gsub!('YZ', 'E')
# p(string)
# p(string[40..].chars.first(5).join(''))

def add_by_half(num)
  add_by = 0
  40.times do
    add_by = num / 2
    num += add_by
    p(num)
  end
  num
end

# p(add_by_half(42))

FIZZ = 3
BUZZ = 5

def fizzbuzz(num)
  res = ''
  res += 'Fizz' if (num % FIZZ).zero?
  res += 'Buzz' if (num % BUZZ).zero?
  res == '' ? num : res
end

(1..100).to_a.each do |num|
  puts fizzbuzz(num)
end
