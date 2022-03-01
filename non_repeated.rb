# Given an array of numbers, Identify the first non repeated number

# Example 1:
# Input : 1, 2, 3, 1, 2
# Output : 3

# Example 2:
# Input : 4 3 4 6 6 3 8
# Output: 8

# arr_one = %w[1 2 3 1 2]
arr_two = %w[4 3 4 6 6 3 8]

hash_one = {}

arr_two.each do |num|
  key = num.to_sym
  if hash_one.key?(key)
    hash_one[key] += 1
  else
    hash_one[key] = 1
  end
end

first_non_repeated = ''
hash_one.each do |key, value|
  if value == 1
    first_non_repeated = key.to_s
    break
  end
end

p first_non_repeated
