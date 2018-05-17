class Game
  def initialize
    @score = 0
    @frames = generate_frames
  end

  def roll(pins)
    current_frame.roll(pins)
  end

  def score
    @frames.each do |frame|
      @score += frame.pins_down
    end
    @score
  end

  private
  def generate_frames
    10.times.map do
      Frame.new
    end
  end

  def current_frame
    @frames.find do |frame|
      !frame.complete?
    end
  end
end
