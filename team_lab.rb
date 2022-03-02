# test questions

def quartic_sum
  sum = 0
  (1..50).each do |num|
    sum += num**4
  end
  sum
end
puts "Sum of quartic numbers from 1 to 50 is #{quartic_sum}"

# Find the sum of all positive divisors of 1234567890 smaller than 2000000
def divisors_sum(num_to_div)
  sum = 0
  (1..2_000_000).each do |num|
    sum += num if num_to_div % num == 0
  end
  sum
end

num = 1_234_567_890
puts "Sum of all positive divisors of 1234567890 smaller than 2000000 is #{divisors_sum(num)}"

# Let's define the "multiplicative inverse sum up to N" as the sum of all multiplicative inverses of the integers from 1 to N.

# Multiplicative inverse sum up to 1 = 1/1 = 1
# Multiplicative inverse sum up to 2 = 1/1 + 1/2 = 1.5
# Multiplicative inverse sum up to 3 = 1/1 + 1/2 + 1/3 = 1.8333333333…
# Multiplicative inverse sum up to 4 = 1/1 + 1/2 + 1/3 + 1/4 = 2.0833333333…
# Find the smallest N which the "multiplicative inverse sum up to N" is greater than 9.

def multiplicative_inverse_sum(range)
  sum = 0.0
  (1..range).each do |num|
    sum += 1.0 / num
  end
  return range if sum >= 9
end

smallest_n = 0
(4000..5000).each do |num|
  smallest_n = num if multiplicative_inverse_sum(num)
  break if multiplicative_inverse_sum(num)
end

puts "Smallest N which the 'multiplicative inverse sum up to #{smallest_n}' is greater than 9"

# Let's define an "A type" number as an integer that follows one or more of the conditions listed below.

# Is a mutiple of 3.
# Has a "3" in its representation, if written using the decimal system.
# E.g. 9, 31, 42, 135 are all "A type" numbers.

# Find the sum of all "A type" numbers between 1 and 33333.

def nabeazz
  sum = 0
  (1..33_333).each do |num|
    sum += num if num.to_s.match?(/3/) || (num % 3).zero?
  end
  sum
end

puts "Sum of all 'A type' numbers is #{nabeazz}"

# Suppose we have 600 boxes, each one weighting 1kg, 2kg, 3kg, ..., 600kg. We are trying to transport all those boxes using trucks that have a max capacity of 5000kg each.

# The strategy used to load the trucks is:

# Load the boxes in order of weight from the heaviest one to the lightest one.
# If we try to load a box into a truck and it passes its max capacity, we call a new one and load the box into it. From there on we don't load any new boxes into the old trucks.
# Using this strategy the trucks will be loaded as follows:

# Truck 1: Boxes with 600kg，599kg，598kg，597kg，596kg，595kg，594kg，593kg
# Truck 2: Boxes with 592kg，591kg，590kg，589kg，588kg，587kg，586kg，585kg
# Find how many trucks will be used to transport all the boxes using the strategy above.

def too_many_boxes(boxes_hash)
  trucks = [0]
  truck_index = 0

  while boxes_hash.value?(1)
    boxes_hash.each do |key, value|
      next if value.zero?

      unless trucks[truck_index] + key >= 5000
        trucks[truck_index] += key
        boxes_hash[key] = 0
      end
    end
    truck_index += 1
    trucks[truck_index] = 0
  end
  trucks.delete(0)
  # p trucks
  trucks.length
end

boxes = (1..600).to_a.reverse
boxes_hash = {}
boxes.each do |box|
  boxes_hash[box] = 1
end
puts "#{too_many_boxes(boxes_hash)} Trucks will be used to transport all the boxes using the strategy above"
