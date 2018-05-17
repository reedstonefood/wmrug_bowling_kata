class Frame
  def initialize
    @rolls = 0
    @pins_down = 0
  end

  def roll(pins)
    @rolls += 1
    @pins_down += pins
  end

  def complete?
    return true if @rolls == 2
    false
  end

  def spare?
    @pins_down == 10
  end

  def pins_down
    @pins_down
  end
end
