# @param {Integer} num_rows
# @return {Integer[][]}

ROWS = []
def generate(num_rows)
  new_row = []
  initial_num = 1
  (1..num_rows).each_with_index do |row, index|
    case index
    when 0
      new_row = [initial_num] if index == 0
    when 1
      new_row = [initial_num, initial_num] if index == 1
    else
      new_row << ROWS[index - 1][0]
      (0..index - 2).each do |num|
        new_row << ROWS[index - 1][num] + ROWS[index - 1][num + 1]
      end
      new_row << ROWS[index - 1][-1]
    end
    p(ROWS)
    ROWS << new_row
    p(ROWS)
    new_row = []
  end
  p(ROWS)
  ROWS
end

p(generate(1))
# iterate over row nums
# add row
# number = past_row[index] + past_row[index + 1]
