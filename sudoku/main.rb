def is_valid_sudoku(board)
  column = []
  # set block []
  all_cols_valid = true
  all_rows_valid = true
  # set column number
  (0..8).to_a.each do |col|
    # go through each row and get number at col index
    (0..8).to_a.each do |row|
      column << board[row][col]
    end
    all_cols_valid = false unless valid_line?(column)
    # reset column for to prepare for next one
    column = []
  end
  board.each_with_index do |row, index|
    # check row for 1 - 9, return true or false
    all_rows_valid = false unless valid_line?(row)
    # set block index number, starting with 0
    # use set index number to find column and add to column array
    # three times do,
    # get
    # reset column array
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

def finished_row?(row)
  row.sort == ('1'..'9').to_a
end

# board2 =
#   [['5', '3', '.', '.', '7', '.', '.', '.', '.'],
#    ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
#    ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
#    ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
#    ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
#    ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
#    ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
#    ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
#    ['.', '.', '.', '.', '8', '.', '.', '7', '9']]

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
