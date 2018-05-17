require_relative '../game.rb'

describe Game do
  it "gutter game should score zero" do
    roll_many( 20, 0 )

    expect(subject.score).to be 0
  end

  it "scores 20 when rolling 1 20 times" do
    roll_many( 20, 1 )

    expect(subject.score).to be 20
  end

  it "should know how to calculate a spare" do
    roll_many(3, 5)
    roll_many(17, 0)

    expect( subject.score ).to be 20
  end

  private
  def roll_many( rolls, pins)
    rolls.times do
      subject.roll(pins)
    end
  end
end