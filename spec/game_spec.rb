require_relative '../game.rb'

describe Game do
  it "gutter game should score zero" do
    20.times do
      subject.roll(0)
    end
    
    expect(subject.score).to be 0
  end

  it "rolling 1 20 times should score 20" do
    20.times do
      subject.roll(1)
    end
    
    expect(subject.score).to be 20
  end
end