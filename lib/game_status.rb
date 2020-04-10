# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
<<<<<<< HEAD
  WIN_COMBINATIONS.detect do |win_combo_array|
      board[win_combo_array[0]] == board[win_combo_array[1]] &&  board[win_combo_array[1]] == board[win_combo_array[2]] && position_taken?(board, win_combo_array[0]) 
  end
end

def full?(board)
  full = board.all? do |value|
    value == "X" || value == "O"
  end
end


  
=======
  WIN_COMBINATIONS.each do |first_row_array|
    win_index_1 = first_row_array[0]
    win_index_2 = first_row_array[1]
    win_index_3 = first_row_array[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    
    if position_taken?(board, win_index_1) == false || position_taken?(board, win_index_2) == false || position_taken?(board, win_index_3) == false
      false
    else
      if position_1 == "X" && position_2 == "X" && position_3 == "X"
        return first_row_array
      else
        false
      end
    end
  end
end
>>>>>>> 0af30216fa30e886c3328c7572e8bab6d4facffb
