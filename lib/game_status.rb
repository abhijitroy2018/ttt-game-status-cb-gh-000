# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    winning_positions_taken = position_taken?(board, win_combination[0]) &&
                              position_taken?(board, win_combination[1]) &&
                              position_taken?(board, win_combination[2])

    if winning_positions_taken
      all_Xs = win_combination.all? do |index_X|
        board[index_X] == "X"
      end
      all_Os = win_combination.all? do |index_O|
        board[index_O] == "O"
      end

      if all_Xs || all_Os
        return win_combination
      # else
      #   return winning_positions_taken
      # end

    end # end of outer if
  end # end of do-loop
end # end of def

# def full?(board)
#
# end
#
# def draw?(board)
#
# end
#
# def over?(board)
#
# end
#
# def winner?(board)
#
# end
