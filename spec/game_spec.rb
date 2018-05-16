require_relative '../game.rb'

describe Game do
  it "gutter game should score zero" do
    roll_many( 20, 0 )

    expect(subject.score).to be 0
  end

  it "rolling 1 20 times should score 20" do
    roll_many( 20, 1 )
    
    expect(subject.score).to be 20
  end

  private
  def roll_many( rolls, pins)
    rolls.times do
      subject.roll(pins)
    end
  end
end