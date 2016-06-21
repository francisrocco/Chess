require 'singleton'


class NullPiece

  # include Singleton
  def initialize
    @value = "   "
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
end
