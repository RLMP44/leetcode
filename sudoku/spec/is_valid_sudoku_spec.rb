require_relative '../main.rb'

BOARD =
  [['1', '4', '6', '9', '2', '7', '8', '3', '5'],
   ['5', '6', '5', '2', '7', '1', '9', '2', '6'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.'],
   ['.', '.', '.', '.', '.', '.', '.', '.', '.']]

BOARD2 =
  [['5', '3', '.', '.', '7', '.', '.', '.', '.'],
   ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
   ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
   ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
   ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
   ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
   ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
   ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
   ['.', '.', '.', '.', '8', '.', '.', '7', '9']]

BOARD3 =
  [['8', '3', '.', '.', '7', '.', '.', '.', '.'],
   ['6', '.', '.', '1', '9', '5', '.', '.', '.'],
   ['.', '9', '8', '.', '.', '.', '.', '6', '.'],
   ['8', '.', '.', '.', '6', '.', '.', '.', '3'],
   ['4', '.', '.', '8', '.', '3', '.', '.', '1'],
   ['7', '.', '.', '.', '2', '.', '.', '.', '6'],
   ['.', '6', '.', '.', '.', '.', '2', '8', '.'],
   ['.', '.', '.', '4', '1', '9', '.', '.', '5'],
   ['.', '.', '.', '.', '8', '.', '.', '7', '9']]

ROW = [BOARD2[0][0], BOARD2[0][1], BOARD2[0][2], BOARD2[0][3], BOARD2[0][4], BOARD2[0][5], BOARD2[0][6], BOARD2[0][7], BOARD2[0][8]]
ROW2 = [BOARD3[0][0], BOARD3[0][1], BOARD3[0][2], BOARD3[0][3], BOARD3[0][4], BOARD3[0][5], BOARD3[0][6], BOARD3[0][7], BOARD3[0][8]]
COLUMN = [BOARD2[0][0], BOARD2[1][0], BOARD2[2][0], BOARD2[3][0], BOARD2[4][0], BOARD2[5][0], BOARD2[6][0], BOARD2[7][0], BOARD2[8][0]]
COLUMN2 = [BOARD3[0][0], BOARD3[1][0], BOARD3[2][0], BOARD3[3][0], BOARD3[4][0], BOARD3[5][0], BOARD3[6][0], BOARD3[7][0], BOARD3[8][0]]

describe '#valid_line?' do
  it 'should return true if it has no repeated numbers' do
    expect(valid_line?(BOARD[0])).to eq(true)
    expect(valid_line?(BOARD2[0])).to eq(true)
    expect(valid_line?(BOARD[1])).to eq(false)
    expect(valid_line?(ROW)).to eq(true)
    expect(valid_line?(ROW2)).to eq(true)
    expect(valid_line?(COLUMN)).to eq(true)
    expect(valid_line?(COLUMN2)).to eq(false)
  end
end

describe '#is_valid_sudoku' do
  it 'should return true if sudoku board has no repeat numbers in row, column, or block' do
    expect(is_valid_sudoku(BOARD)).to eq(false)
    expect(is_valid_sudoku(BOARD2)).to eq(true)
    expect(is_valid_sudoku(BOARD3)).to eq(false)
  end
end

describe '#finished_line?' do
  it 'should return true if row is complete and numbers do not repeat' do
    expect(finished_line?(BOARD[0])).to eq(true)
    expect(finished_line?(BOARD[1])).to eq(false)
  end
end
