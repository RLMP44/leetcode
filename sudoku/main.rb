def is_valid_sudoku(board)
  @column = []
  @is_valid = true
  @block = []
  board.each_with_index do |row, index|
    make_column(board, index)
    @is_valid = false unless valid_line?(@column)
    # check row for 1 - 9, return true or false
    @is_valid = false unless valid_line?(row)
    inc_amount = increment(index)
    @block << [board[index][0 + inc_amount], board[index][1 + inc_amount], board[index][2 + inc_amount]]
    handle_block(index)
    # reset column to prepare for next one
    @column = []
  end
  @is_valid
end

def handle_block(index)
  # validate block only on every 3rd iteration
  return unless [2, 5, 8].include?(index)

  @is_valid = false unless valid_line?(@block.flatten!)
  @block = []
end

def valid_line?(line)
  # checks for any repeat numbers in a given line or block
  repeat = false
  line.each do |num|
    repeat = true if num != '.' && line.count(num) > 1
  end
  repeat ? false : true
end

def increment(index)
  # must only increment after every 3rd iteration
  inc_amount = 0
  inc_amount = 3 if index == 3
  inc_amount = 6 if index == 6
  inc_amount
end

def make_column(board, row)
  # receive a row index, assign column number using 0-8
  (0..8).to_a.each do |col|
    @column << board[row][col]
  end
end

# def finished_line?(line)
#   line.sort == ('1'..'9').to_a
# end

# --------------------- TEST CASES ----------------------- #

board = [
  ('1'..'9').to_a,
  ('10'..'18').to_a,
  ('19'..'27').to_a,
  ('28'..'36').to_a,
  ('37'..'45').to_a,
  ('46'..'54').to_a,
  ('55'..'63').to_a,
  ('64'..'72').to_a,
  ('73'..'81').to_a
]

board2 =
  [['5', '3', '.', '.', '7', '.', '.', '.', '.'],
   ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
   ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
   ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
   ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
   ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
   ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
   ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
   ['.', '.', '.', '.', '8', '.', '.', '7', '9']]

board3 =
  [['8', '3', '.', '.', '7', '.', '.', '.', '.'],
   ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
   ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
   ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
   ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
   ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
   ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
   ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
   ['.', '.', '.', '.', '8', '.', '.', '7', '9']]

# --------------------- TESTING ------------------------ #
puts(is_valid_sudoku(board3))

# ---------------------- RULES ------------------------- #
# Determine if a 9 x 9 Sudoku board is valid.
# Only the filled cells need to be validated according to the following rules:

# Each row must contain the digits 1-9 without repetition.
# Each column must contain the digits 1-9 without repetition.
# Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
# Note:

# A Sudoku board (partially filled) could be valid but is not necessarily solvable.
# Only the filled cells need to be validated according to the mentioned rules.
