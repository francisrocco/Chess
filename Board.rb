require_relative "piece.rb"
require_relative "NullPiece.rb"
require "byebug"

class Board
  attr_accessor :board

  def initialize
    @board = Array.new(8){Array.new(8)}
    # # #
    # self.populate
  end

  def move(start_pos, end_pos)
    if has_piece?(end_pos)
      raise PieceinSpot.new ("there's a piece already there")
    elsif !has_piece?(start_pos)
      raise NoPieceinSpot.new ("no piece to move")
    else
      self[end_pos] = self[start_pos]
      self[start_pos] = nil


    end
  end

  def populate
    a = NullPiece.new
    # @board[0].map! { |i| a}
    # @board[1].map! { |i| a}
    # @board[2].map! { |i| a}
    # @board[3].map! { |i| a}
    # @board[4].map! { |i| a}
    # @board[5].map! { |i| a}
    # @board[6].map! { |i| a}
    # @board[7].map! { |i| a}

    @board.each do |row|
      row.each_with_index do |elem, ind|
        row[ind] = a
      end
    end


  end

  def has_piece?(pos)

    !self[pos].nil?
  end

  def [](pos)
    x,y = pos
    debugger
    board[x][y]
  end

  def []=(pos, val)
    x,y = pos
    @board[x][y] = val
    val.position = [x, y]
  end

#
# a = Board.new
# a
#
# a[[1,2]]
# #piece
#
# a[[1,2]] = Piece.new("b", "white", a)
# #


end
