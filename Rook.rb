require_relative "SlidingClass.rb"

class Rook < SlidingClass

  DIRECTIONS = [[-1, 0], [1, 0], [0, -1], [0, 1]]

  attr_accessor :value, :position, :board

  def initialize(value, color, board)
    super
  end

end
