class Game
  def initialize
    @score = 0
    @frames = [Frame.new]
  end

  def roll(pins)
    @frames << Frame.new if @frames.last.complete?
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
    @frames.last
  end

  def previous_frame
    @frames[@frames.count-1]
  end
end
