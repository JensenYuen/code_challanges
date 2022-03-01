# Code in Ruby 2.2

# An array A consist of N non-negative intergers
# Its binarian is defined as
#
# binarian(A) = pow2(A[0]) + pow2(A[1]) + ... + pow2(A[N-1])
# pow2(k) = 2^k

# returns the length of the shortest array with the same binarian as array A

def binarian(a)
  binarian = 0
  a.each do |num|
    binarian += (2**num)
  end

  shorten_arr = []
  i = 0

  while binarian > 0
    shorten_arr[i] = binarian % 2
    binarian /= 2
    i += 1
  end

  new_arr = []
  i = 0

  shorten_arr.each_with_index do |num, index|
    if index == 0 && num == 1
      new_arr[i] = 0
      i += 1
      next
    end

    next if num == 0

    new_arr[i] = index
    i += 1
  end
  new_arr.reverse.length
end

arr_a = [1, 0, 2, 0, 0, 2]
arr_b = [3, 2, 0]
# returned array = [3, 2, 0].lenght = 3

# solution should return 3 for arr_a & arr_b
p binarian(arr_a)
p binarian(arr_b)
