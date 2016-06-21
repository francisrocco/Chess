require_relative "Piece.rb"
require "byebug"

class Bishop < Piece

  DIRECTIONS = [[-1, 1], [1, 1], [-1, -1], [1, -1]]

  attr_accessor :value, :position, :board

  def initialize(val, color, board)
    super
  end

  #[0,0]
  def possible_moves
    possible_moves_results = []
    # 8.times do |multiplier|



    DIRECTIONS.each do |direction|
      (1..8).each do |multiplier|
        direction_guide = [direction[0] * (multiplier), direction[1] * (multiplier)]
        board_pos = [direction_guide[0] + position[0], direction_guide[1] + position[1]]

        break if board_pos.any? {|elem| (elem < 0 || elem > 7)} || !@board[board_pos].nil? 

        possible_moves_results.push(board_pos)

      end

    end

    possible_moves_results
  end

    #
    # multiplier = 1
    # # until !valid_pos?(move)
    #   DIRECTIONS.map do |direction|
    #     move =  [direction[0] * (multiplier), direction[1] * (multiplier)]
    #     next if !@board[move].valid_pos?
    #     possible_moves.push(move)
    #   end
    #   multiplier += 1
    # end

  def move
    #if
    moves = []

    moves
  end
  #
  # def boundaries
  #   #if piece of same color , not a move
  #   #if piece of diff color , kill
  #   # debugger
  #   on_board = possible_moves.select {|elem| elem[0].between?(0,7) && elem[1].between?(0,7)}
  #
  #   blockers = on_board.select {|pos| @board[pos].is_a?(Piece)}
  #
  #   positions_that_we_cant_access_after_blocker = []
  #   blockers.each do |blocker|
  #     direction = [(blocker[0] <=> @position[0]) , (blocker[1] <=> @position[1])]
  #
  #     next_one = [blocker[0] + direction[0], blocker[1] + direction[1]]
  #     # if !@board[next_one].nil?
  #     until !@board[next_one].valid_pos?
  #       positions_that_we_cant_access_after_blocker.push(next_one)
  #       next_one[0], next_one[1] = next_one[0] + direction[0], next_one[1] + direction[1]
  #     end
  #   end
  #   on_board.reject { |pos| positions_that_we_cant_access_after_blocker.include?(pos) }
  # end

end
