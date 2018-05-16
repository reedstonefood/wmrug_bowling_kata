require_relative '../frame.rb'

describe Frame do
  it "expects no rolls to result in an incomplete frame" do
    expect( subject.complete? ).to be false
  end

  it "expects 2 rolls to be a complete frame" do
    subject.roll(3)
    subject.roll(3)
    expect( subject.complete? ).to be true
  end

  it "expects 0 rolls to not be a spare" do
    expect( subject.spare? ).to be false
  end

  it "expects 1 roll to not be a spare" do
    subject.roll(5)
    expect( subject.spare? ).to be false
  end

  it "expects 2 rolls that total 10 to be a spare" do
    subject.roll(5)
    subject.roll(5)
    expect( subject.spare? ).to be true
  end

  it "expects 2 rolls of 3 to score 6" do
    subject.roll(3)
    subject.roll(3)
    expect( subject.score ).to be 6
  end

end