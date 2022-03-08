# frozen_string_literal: false

require 'pry-byebug'

def sonar_sweep(depths)
  larger_measurement = 0

  depths.each_with_index do |depth, index|
    break if depths[index + 1].nil?

    larger_measurement += 1 if depth < depths[index + 1]
  end
  larger_measurement
end

test_input = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
input = File.open('./sonar_sweep_input.txt').read.split(/\n/)
input_num = input.map(&:to_i)

# test_input should return 7 (true)
p sonar_sweep(test_input) == 7
p sonar_sweep(input_num)

def sonar_sweep_part_two(depths)
  depths = depths.each_cons(3).map do |depth|
    depth.sum
  end
  sonar_sweep(depths)
end

test_input_two = [607, 618, 618, 617, 647, 716, 769, 792]

# test_input should return 5 (true)
p sonar_sweep_part_two(test_input_two)
p sonar_sweep_part_two(input_num)
