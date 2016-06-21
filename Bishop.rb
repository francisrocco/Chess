require_relative "SlidingClass.rb"

class Bishop < SlidingClass

  DIRECTIONS = [[-1, -1], [1, -1], [1, 1], [-1, 1]]

  def initialize(val, color, board)
    super
  end


end
