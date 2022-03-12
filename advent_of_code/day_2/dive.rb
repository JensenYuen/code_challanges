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
    case key
    when :up
      directions[:horizontal] += value
    when :down
      directions[:horizontal] -= value
    else
      directions[:verital] += value
    end
  end
  (directions[:verital] * directions[:horizontal]).abs
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
# Test input should return true (150)
# p dive(test_inputs) == 150
# p dive(inputs)

def dive_part_two(inputs)
  directions = {
    horizontal: 0,
    depth: 0,
    aim: 0
  }
  inputs.each do |input|
    direction_arr = input.split(' ')
    key = direction_arr[0].to_s.to_sym
    value = direction_arr[1].to_i
    case key
    when :up
      directions[:aim] -= value
    when :down
      directions[:aim] += value
    else
      directions[:horizontal] += value
      directions[:depth] += value * directions[:aim]
    end
  end
  (directions[:depth] * directions[:horizontal]).abs
end

# Test input should return trun (900)
# p dive_part_two(test_inputs) == 900
p dive_part_two(inputs)
