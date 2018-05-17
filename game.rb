class Game
  def initialize
    @score = 0
    @frames = [Frame.new]
  end

  def roll(pins)
    if current_frame.complete?
      process_frame
      @frames << Frame.new 
    end
    current_frame.roll(pins)
  end

  def score
    @frames.each do |frame|
      @score += frame.score
    end
    @score
  end

  private
  def generate_frames
    10.times.map do
      Frame.new
    end
  end
  
  def process_frame
    if current_frame != @frames.first
      if previous_frame.spare?
        previous_frame.bonus = current_frame.first_roll 
      end
    end
  end

  def current_frame
    @frames.last
  end

  def previous_frame
    @frames[-2]
  end
end
