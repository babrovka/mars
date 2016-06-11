require_relative 'spec_helper'

describe RoverMovement do
  context "Move Actions" do

    before(:each) do
      @rover_movement = RoverMovement.new
    end

    it "should move the rover to 1 3 N" do
      rover = Rover.new("1 2 N")
      plateau = Plateau.new("5 5")
      commands = "LMLMLMLMM"
      @rover_movement.move(rover, plateau, commands)
      expect(rover.show_coordinates).to eq("1 3 N")
    end

    it "should rotate to W" do
      plateau = Plateau.new("5 5")
      expect(@rover_movement.rotate("N", "R")).to eq("E")
    end

    it "should not allowed to move if new coordinate will be oustide the map" do
      plateau = Plateau.new("5 5")
      expect(@rover_movement.forward(5, 5, "N", plateau)).to eq([5,5])
    end

    it "should allowed to move if new coordinate will be inside the map" do
      plateau = Plateau.new("5 5")
      expect(@rover_movement.forward(4, 4, "N", plateau)).to eq([4,5])
    end
  end
end