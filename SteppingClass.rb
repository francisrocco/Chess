require_relative "Piece.rb"

class SteppingClass < Piece

  DIRECTIONS = []

  def initialize(value, color, board)
    super
  end

  def possible_moves
    results = []
    self.class::DIRECTIONS.each do |direction|
      move = [(direction[0] + position[0]), (direction[1] + position[1])]
      if !move.any? {|elem| elem < 0 || elem > 7}
        results.push(move)
      end
    end
    results
  end

end
