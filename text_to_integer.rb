# write a function solution that given an integer, D ( 1-5) and a string, S ( 1,2,3,4,5),
# returns the result of multiplying D with S and expressed as an integer
# Code in Ruby 2.2

def text_to_integer(d, s)
  # assuming S can be different cases
  # downcase s to non-caps
  string = s.downcase
  # check string
  num_string = case string
               when 'one'
                 1
               when 'two'
                 2
               when 'three'
                 3
               when 'four'
                 4
               else # five
                 5
               end
  d * num_string
end

d = 4
s = 'two'

puts text_to_integer(d, s)
