require 'singleton'


class NullPiece
  attr_accessor :value, :position, :board
  # include Singleton
  def initialize
    @value = "   "
    @position = nil
  end


  def move

  end

  def color
  end

  def to_s
    @value.to_s
  end

  def inspect
    @value
  end

  def empty?

  end

  def valid_pos?
    position.all? {|elem| elem.between?(0,7)}
  end

end
