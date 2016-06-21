require_relative "SteppingClass.rb"

class King < SteppingClass

DIRECTIONS = [[1, -1], [1, 0], [1, 1], [0, -1], [0, 1], [-1, -1], [-1, 0], [-1, 1]]

  def initialize(value, color, board)
    super
  end


end
