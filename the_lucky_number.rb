# A lucky number is a 10-based number, which has at least a "6" or an "8" in its digits.
# However, if it has "6" and "8" at the same time, then the number is NOT lucky.
# For example, "16", "38", "666" are lucky numbers, while "234" , "687" are not.

# Now we want to know how many lucky numbers (without leading zeroes) are there between L and R, inclusive?

def the_lucky_number
  left_range, right_range = gets.split(' ').collect { |x| x.to_i }
  sum = 0
  (left_range..right_range).to_a.each do |num|
    num = num.to_s
    next if num.match?(/6/) && num.match?(/8/)

    sum += 1 if num.match?(/6/) || num.match?(/8/)
  end
  sum
end

p the_lucky_number
