require_relative '../rover'

describe Rover do
  it "should setup the attibutes" do
    rover = Rover.new("1 2 N")
    expect(rover.x).to eq(1)
    expect(rover.y).to eq(2)
    expect(rover.direction).to eq("N")
  end

  it "should show the position" do
    rover = Rover.new("1 2 N")
    expect(rover.show_coordinates).to eq("1 2 N")
  end
end