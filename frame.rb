class Frame
  attr_accessor :bonus

  def initialize
    @pins_down = []
    @bonus = 0
  end

  def roll(pins)
    @pins_down << pins
  end

  def complete?
    return true if @pins_down.count == 2
    false
  end

  def spare?
    pins_down == 10
  end

  def pins_down
    @pins_down.inject(0, :+)
  end
  
  def first_roll
    @pins_down[0]
  end
  
  def score
    pins_down + bonus
  end
end
