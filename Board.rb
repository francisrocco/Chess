require_relative "piece.rb"
require_relative "NullPiece.rb"
require "byebug"

class Board
  attr_accessor :board

  def initialize
    @board = Array.new(8){Array.new(8)}
    # #
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


    def [](pos)
      x,y = pos
      board[x][y]
    end

    def []=(pos, val)
      x,y = pos
      @board[x][y] = val
      val.position = [x, y]
    end

  def populate
    a
    @board[[0,0]] == Rook.new("r", "white", board)
    @board[[0,7]] == Rook.new("r", "white", board)
    @board[[0,1]] == Knight.new("k", "white", board)
    @board[[0,6]] == Knight.new("k", "white", board)
    @board[[0,2]] == Bishop.new("b", "white", board)
    @board[[0,5]] == Bishop.new("b", "white", board)
    @board[[0,3]] == Queen.new("q", "white", board)
    @board[[0,4]] == King.new("K", "white", board)

    @board[[7,0]] == Rook.new("r", "black", board)
    @board[[7,7]] == Rook.new("r", "black", board)
    @board[[7,1]] == Knight.new("k", "black", board)
    @board[[7,6]] == Knight.new("k", "black", board)
    @board[[7,2]] == Bishop.new("b", "black", board)
    @board[[7,5]] == Bishop.new("b", "black", board)
    @board[[7,3]] == Queen.new("q", "black", board)
    @board[[7,4]] == King.new("K", "black", board)

    # @board[1].map! { |i| a}
    # @board[2].map! { |i| a}
    # @board[3].map! { |i| a}
    # @board[4].map! { |i| a}
    # @board[5].map! { |i| a}
    # @board[6].map! { |i| a }
    # @board[7].map! { }
    #
    # @board.each do |row|
    #   row.each_with_index do |elem, ind|
    #     row[ind] = a
    #   end
    # end


  end

  def has_piece?(pos)

    !self[pos].nil?
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
