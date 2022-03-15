# Complete an implementation of a function Solution, that should
# return a string descriing first character of the given string:
# "digit" for a digit, "lower" for a lowercase letter,
# "upper" for an uppercase letter and "other" for other characters.
# You can assume the characters are ASCII

def ASCII(s)
  c = s.slice(0, 1)
  if c.match(/[A-Z]/)  # please fix condition
    return "upper"
  elsif c.match(/[a-z]/)  # please fix condition
    return "lower"
  elsif c.match(/[0-9]/)  # please fix condition
    return "digit"
  else
    return "other"
  end
end
