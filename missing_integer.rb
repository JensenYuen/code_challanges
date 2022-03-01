# Code in Ruby 2.2

def missing_interger(arr)
  sorted_arr = arr.select do |num|
    num > 0
  end

  smallest_num = 1

  sorted_arr.sort.each do |num|
    return smallest_num if smallest_num < num

    smallest_num = num + 1
  end
  smallest_num
end

test_arr = [1, 3, 6, 4, 1, 2]
test_arr_two = [-1, -3]
puts missing_interger(test_arr)
puts missing_interger(test_arr_two)
