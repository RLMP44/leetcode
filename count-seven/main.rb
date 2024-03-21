# 問題→7以上7777777以下の7の倍数を全て書き出したとき、数字「7」は何回現れるか。

divisible_nums = (7..7_777_777).to_a.select { |num| (num % 7).zero? }
count = divisible_nums.join('').count('7')
p(count)

# 正解→777784
