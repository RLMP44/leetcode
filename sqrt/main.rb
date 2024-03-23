def my_sqrt(x)
  @next_odd_num = 1
  @square = 0
  reduce(x)
  @square
end

def reduce(x)
  until x < @next_odd_num do
    x -= @next_odd_num
    @next_odd_num += 2
    @square += 1
  end
end

# ------------------ TESTS --------------------- #
p(my_sqrt(4))

# ------------------ RULES --------------------- #
# Given a non-negative integer x,
# return the square root of x rounded down to the nearest integer.
# The returned integer should be non-negative as well.

# You must not use any built-in exponent function or operator.

# For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.
