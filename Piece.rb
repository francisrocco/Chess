

class Piece

  attr_accessor :value, :position, :board

  def initialize(value, color, board)
    @value = value
    @color = color
    @board = board
    @position = nil
  end

  def to_s
    @value
  end

  def inspect
    @value
  end

  def valid_pos?
    position.all? {|elem| elem.between?(0,7)}
  end


end
