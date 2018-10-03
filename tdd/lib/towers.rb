class TowersOfHanoi
  attr_accessor :board

  def initialize
    @board = [[1, 2, 3],[],[]]

  end

  def move(start_pos, end_pos)
    if valid_move?(start_pos, end_pos)
      board[end_pos].unshift(board[start_pos].shift)
    else
      raise "Can't do that"
    end
  end

  def valid_move?(start_pos, end_pos)
    return true if board[end_pos].empty?
    return false if board[start_pos].empty?
    return false if board[start_pos].first > board[end_pos].first
    true
  end

  def won?
    return true if board[1..2].any?{|row| row == [1, 2, 3]}
    false
  end
end
