require_relative "piece.rb"

class SlidingClass < Piece
  DIRECTIONS = []

  attr_accessor :value, :position, :board

  def initialize(val, color, board)
    super
  end

  def possible_moves
    possible_moves_results = []

    self.class::DIRECTIONS.each do |direction|
      (1..8).each do |multiplier|
        direction_guide = [direction[0] * (multiplier), direction[1] * (multiplier)]
        board_pos = [direction_guide[0] + position[0], direction_guide[1] + position[1]]

        break if board_pos.any? {|elem| (elem < 0 || elem > 7)} || !@board[board_pos].nil?

        possible_moves_results.push(board_pos)
      end
    end
    possible_moves_results
  end

end
