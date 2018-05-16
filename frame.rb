class Frame
  def initialize
    @rolls = 0
    @score = 0
  end

  def roll(pins)
    @rolls += 1
    @score += pins
  end

  def complete?
    return true if @rolls == 2
    false
  end

  def spare?
    @score == 10
  end

  def score
    @score
  end
end
