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

COLUMN = [BOARD2[0][0], BOARD2[0][1], BOARD2[0][2], BOARD2[0][3], BOARD2[0][4], BOARD2[0][5], BOARD2[0][6], BOARD2[0][7], BOARD2[0][8]]
COLUMN2 = [BOARD3[0][0], BOARD3[0][1], BOARD3[0][2], BOARD3[0][3], BOARD3[0][4], BOARD3[0][5], BOARD3[0][6], BOARD3[0][7], BOARD3[0][8]]


describe '#valid_line?' do
  it 'should return true if it has no repeated numbers' do
    expect(valid_line?(BOARD[0])).to eq(true)
    expect(valid_line?(BOARD2[0])).to eq(true)
    expect(valid_line?(BOARD[1])).to eq(false)
    expect(valid_line?(COLUMN)).to eq(true)
    expect(valid_line?(COLUMN2)).to eq(true)
  end
end

describe '#is_valid_sudoku' do
  it 'should return true if sudoku board has no repeat numbers in row, column, or block' do
    expect(is_valid_sudoku(BOARD)).to eq(false)
    expect(is_valid_sudoku(BOARD2)).to eq(true)
    expect(is_valid_sudoku(BOARD3)).to eq(false)

  end
end

describe "#finished_row?" do
  it "should return true if row is complete and numbers don't repeat" do
    expect(finished_row?(BOARD[0])).to eq(true)
    expect(finished_row?(BOARD[1])).to eq(false)
  end
end
