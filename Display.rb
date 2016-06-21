require "colorize"
require_relative "Cursorable.rb"
require 'byebug'

class Display
  include Cursorable

  attr_accessor :board, :cursor_pos

  def initialize(board)
    @board = board
    @cursor_pos = [0, 0]
  end

  def build_grid
    @board.board.map.with_index do |row, i|
      build_row(row, i)
    end
  end

  def build_row(row, i)
    row.map.with_index do |tile, j|
      color_options = colors_for(i, j)
      # tile.nil? ? display_value = "   " : display_value = tile.to_s
      tile.to_s.colorize(color_options)
    end
  end

  def colors_for(i, j)
    if [i, j] == @cursor_pos
      bg = :light_red
    elsif (i + j).odd?
      bg = :black
    else
      bg = :blue
    end
    { background: bg, color: :white }
  end

  def render
    system("clear")
    puts "Arrow keys, space or enter to confirm (first for piece to move, second for position to move to). "
    build_grid.each { |row| puts row.join }
    nil
  end
end
