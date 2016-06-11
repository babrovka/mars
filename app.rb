require 'byebug'
require "readline"
require "./validator"
require "./plateau"
require "./rover"
require "./rover_movement"
include Validator

SEPARATED_CHAR = " "

puts 'please, enter upper right plateau coordinates'
plateau_coordinates = Readline.readline("> ", true)

puts 'please, enter rover current position'
rover_positon = Readline.readline("> ", true)

puts 'please, enter rover move command'
move_command = Readline.readline("> ", true)

if valid_plateau_coordinates_commands?(plateau_coordinates, rover_positon, move_command)
  plateau = Plateau.new(plateau_coordinates)
  rover = Rover.new(rover_positon)
  rover_movement = RoverMovement.new
  rover_movement.move(rover, plateau, move_command)
  puts rover.show_coordinates
else
  puts "Inputs are incorrect!"
end

