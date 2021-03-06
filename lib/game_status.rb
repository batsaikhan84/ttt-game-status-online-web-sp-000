# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo_array|
      if board[win_combo_array[0]] == board[win_combo_array[1]] &&  board[win_combo_array[1]] == board[win_combo_array[2]] && position_taken?(board, win_combo_array[0])
        return win_combo_array
      end
  end
  return false
end

def full?(board)
  board.all? do |value|
    value != " "  
  end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if won?(board) && over?(board)
    board[won?(board)[0]]
  else
    nil
  end
end

