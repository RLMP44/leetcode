def generate(num_rows)
  @rows = []
  @new_row = []
  @initial_num = 1
  (1..num_rows).each_with_index do |row, index|
    @new_row = generate_initial_rows(index)
    generate_inner_row(index) if @new_row.size >= 2
    reset_current_row
  end
  @rows
end

def generate_initial_rows (index)
  index == 0 ? [@initial_num] : [@initial_num, @initial_num]
end

def generate_inner_row(index)
  (0..index - 2).each do |num|
    @new_row.insert(1, @rows[index - 1][num] + @rows[index - 1][num + 1])
  end
end

def reset_current_row
  @rows << @new_row
  @new_row = []
end
