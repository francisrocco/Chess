require_relative "Require_File.rb"
require "byebug"

class Board
  attr_accessor :board

  def initialize
    @board = Array.new(8){Array.new(8)}

    self.populate
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
    @board[0].map! { |i| Piece.new("o")}
    @board[1].map! { |i| Piece.new("o")}
    @board[6].map! { |i| Piece.new("o")}
    @board[7].map! { |i| Piece.new("o")}
  end

  def has_piece?(pos)

    !self[pos].nil?
  end

  def [](pos)
    x,y = pos
    board[x][y]
  end

  def []=(board, val)
    x,y = board
    @board[x][y] = val
  end





end
