# frozen_string_literal: false

require 'pry-byebug'

def dive(inputs)
  directions = {
    horizontal: 0,
    verital: 0
  }
  inputs.each do |input|
    direction_arr = input.split(' ')
    key = direction_arr[0].to_s.to_sym
    value = direction_arr[1].to_i
    if key == :up
      directions[:horizontal] += value
    elsif key == :down
      directions[:horizontal] -= value
    else
      directions[:verital] += value
    end
  end
  directions[:verital] * directions[:horizontal]
end

test_inputs = "forward 5
down 5
forward 8
up 3
down 8
forward 2".split(/\n/)
# split will return an array = ["forward 5", "down 5", "forward 8", "up 3", "down 8", "forward 2"]
inputs = File.open('./dive_input.txt').read.split(/\n/)

# Each input would need to be split again for direction and distance
p dive(test_inputs)
p dive(inputs)

def dive_part_two; end
