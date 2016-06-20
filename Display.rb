require "colorize"
require_relative "Cursorable.rb"

class Display
  include Cursorable

  attr_accessor :board, :cursor_pos

  def initialize(board)
    @board = board
    @cursor_pos = [0, 0]
  end

  def build_grid
    @board.rows.map.with_index do |row, i|
      build_row(row, i)
    end
  end

  def build_row(row, i)
    row.map.with_index do |piece, j|
      color_options = colors_for(i, j)
      piece.to_s.colorize(color_options)
    end
  end

  def colors_for(i, j)
    if [i, j] == @cursor_pos
      bg = :light_red
    elsif (i + j).odd?
      bg = :black
    else
      bg = :grey
    end
    { background: bg, color: :white }
  end

  def render
    system("clear")
    puts "Arrow keys, space or enter to confirm (first for piece to move, second for position to move to). "
    build_grid.each { |row| puts row.join }
  end
end
