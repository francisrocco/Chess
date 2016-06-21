require_relative "SteppingClass.rb"

class Knight < SteppingClass

DIRECTIONS = [[2, 1], [1, 2], [2, -1], [1, -2], [-2, 1], [-1, 2], [-2, -1], [-1, -2]]

  def initialize(value, color, board)
    super
  end


end
