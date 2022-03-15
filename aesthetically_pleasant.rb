# Write a function
#     def solution(a)
# that, given an array A consisting of N integers, where A[K] denotes the
# height of the K-th tree, returns the minimum number of trees that should be
# shortened so that the garden looks aesthetically pleasing.
# Examples:
# 1. Given A = [5,4,3,2,6] your function should return 1. The desired pattern
# can be obtained by decreasing the height of the second tree to 2
# 2. Gievn A = [3,7,4,5] your function should return 0, since the pattern
# is aesthetically pleasing.
# Write an efficient algorithm for the following assumptions:
#     N is an integer within the range [1..100_000]
#     Each element of array A is an integer within the range [2..1000]

def aesthetically_pleasant(arr)
  if arr.length < 3
    return arr[0] != arr[1] ? 0 : 1
  end

  count = 0
  index = 1
  unless arr[index + 1].nil?
    if arr[index - 1] >= arr[index] && arr[index] >= arr[index + 1] || arr[index - 1] <= arr[index] && arr[index] <= arr[index + 1]
      count += 1
    end
    index += 2
  end
  count
end

arr = [5, 4, 3, 2, 6]

p aesthetically_pleasant(arr)
