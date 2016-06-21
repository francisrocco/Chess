

class Piece

  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def to_s
    @value
  end

  def inspect
    @value
  end

end
