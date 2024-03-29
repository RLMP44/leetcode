def is_valid_sudoku(board)
  set_vars
  handle_row_and_col(board)
  handle_block(board)
  @is_valid
end

def set_vars
  @column = []
  @is_valid = true
  @block = []
  @block_column = 0
  @iteration = 1
  @increment = 0
end

def handle_row_and_col(board)
  board.each_with_index do |row, index|
    validity_set(row)
    p("row is #{@is_valid}")
    handle_column(board, index)
  end
end

def validity_set(input)
  # @is_valid only changes if one input is false
  @is_valid = false unless valid_line?(input)
end

def valid_line?(line)
  # checks for any repeat numbers in a given line or block
  repeat = false
  for num in line
    repeat = true if num != '.' && line.count(num) > 1
  end
  repeat ? false : true
end

def handle_column(board, index)
  # makes a column, checks if it is valid, updates @is_valid, then resets @column
  make_column(board, index)
  validity_set(@column)
  p("column is #{@is_valid}")
  @column = []
end

def make_column(board, row)
  # receive a row index, assign column number using 0-8, swap order to get column instead of row
  for col in (0..8).to_a
    @column << board[col][row]
  end
end

def handle_block(board)
  # goes over three main columns of 3x3 blocks, making 3 blocks at a time
  3.times do
    new_block(board)
    @block_column += 3
    @increment = 0
  end
end

def new_block(board)
  # creates a column with 3 3x3 blocks
  9.times do
    @block << board.flatten[(0 + @block_column + @increment)..(2 + @block_column + @increment)]
    execute_block
    @increment += 9
  end
end

def execute_block
  # when a 3x3 block is made, check and set its validity, then reset the block
  return unless @block.count == 3

  validity_set(@block.flatten)
  p("block is #{@is_valid}")
  @block = []
end

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

board4 =
  [['.', '.', '4', '.', '.', '.', '6', '3', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['5', '.', '.', '.', '.', '.', '.', '9', '.'],
   ['.', '.', '.', '5', '6', '.', '.', '.', '.'],
   ['4', '.', '3', '.', '.', '.', '.', '.', '1'],
   ['.', '.', '.', '7', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '5', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.']]

board5 =
  [['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['4', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '6', '.', '.'],
   ['.', '.', '.', '3', '8', '.', '.', '.', '6'],
   ['.', '5', '.', '.', '.', '6', '.', '.', '1'],
   ['8', '.', '.', '.', '.', '.', '.', '6', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['.', '.', '7', '.', '9', '.', '.', '.', '.'],
   ['.', '.', '.', '6', '.', '.', '.', '.', '.']]

# --------------------- TESTING ------------------------ #
puts(is_valid_sudoku(board4))

# ---------------------- RULES ------------------------- #
# Determine if a 9 x 9 Sudoku board is valid.
# Only the filled cells need to be validated according to the following rules:

# Each row must contain the digits 1-9 without repetition.
# Each column must contain the digits 1-9 without repetition.
# Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
# Note:

# A Sudoku board (partially filled) could be valid but is not necessarily solvable.
# Only the filled cells need to be validated according to the mentioned rules.
