require_relative "Piece.rb"

class Rook < Piece

  DIRECTIONS = [[-1, 0], [1, 0], [0, -1], [0, 1]]

  attr_accessor :value, :position, :board

  def initialize(value, color, board)
    super
  end

  def possible_moves
    possible_moves_results = []
    DIRECTIONS.each do |direction|
      (1..8).each do |multiplier|
        direction_guide = [(direction[0] * multiplier), (direction[1] * multiplier)]
        new_pos = [(direction_guide[0] + position[0]), (direction_guide[1] + position[1])]

        break if new_pos.any? { |elm| elm > 7 || elm < 0 } || !@board[new_pos].nil?

        possible_moves_results.push(new_pos)
      end
    end
    possible_moves_results
  end

end
