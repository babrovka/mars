require_relative 'spec_helper'

describe Plateau do
  it "should setup the attibutes" do
    plateau = Plateau.new("5 5")
    expect(plateau.x_min).to eq(0)
    expect(plateau.y_min).to eq(0)
    expect(plateau.x_max).to eq(5)
    expect(plateau.y_max).to eq(5)
  end

  it "should reject movement" do
    plateau = Plateau.new("5 5")
    expect(plateau.possible_movement?(6,6)).to be false
  end

  it "should allow movement" do
    plateau = Plateau.new("5 5")
    expect(plateau.possible_movement?(3,4)).to be true
  end
end