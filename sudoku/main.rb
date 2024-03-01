def is_valid_sudoku(board)
  p board
  column = []
  block = []
  all_cols_valid = true
  all_rows_valid = true
  all_blocks_valid = true
  iteration = 0
  # set column number
  (0..8).to_a.each do |col|
    make_block(block, board, col, iteration)
    make_column(column, board, col)
    all_cols_valid = false unless valid_line?(column)
    # reset column for to prepare for next one
    column = []
    iteration += 1
  end
  board.each do |row|
    # check row for 1 - 9, return true or false
    all_rows_valid = false unless valid_line?(row)
  end
  all_cols_valid && all_rows_valid
end

def valid_line?(line)
  repeat = false
  line.each do |num|
    repeat = true if num != '.' && line.count(num) > 1
  end
  repeat ? false : true
end

def make_block(block, board, col, iteration)
  array = []
  if iteration <= 2
    array = (0..2)
  elsif iteration <= 5
    array = (3..5)
  else
    array = (6..8)
  end
  puts('make_block')
  p(block)
  set_block_rows(block, board, col, array) if [2, 5, 9].include?(iteration)
end

def set_block_rows(block, board, col, array)
  puts('block rows')
  p(block)
  array.to_a.each do |row|
    block << board[row][col]
  end
end

def make_column(column, board, col)
  # go through each row and get number at col index
  (0..8).to_a.each do |row|
    column << board[row][col]
  end
end

def finished_line?(line)
  line.sort == ('1'..'9').to_a
end

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
puts(is_valid_sudoku(board))

# ---------------------- RULES ------------------------- #
# Determine if a 9 x 9 Sudoku board is valid.
# Only the filled cells need to be validated according to the following rules:

# Each row must contain the digits 1-9 without repetition.
# Each column must contain the digits 1-9 without repetition.
# Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
# Note:

# A Sudoku board (partially filled) could be valid but is not necessarily solvable.
# Only the filled cells need to be validated according to the mentioned rules.
