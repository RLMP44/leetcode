def climb_stairs(n)
  return 1 if [1, 0].include?(n)

  climb_stairs(n - 1) + climb_stairs(n - 2)
end

# ------------------ TESTS --------------------- #
p(climb_stairs(2))

# ------------------ RULES --------------------- #
# You are climbing a staircase.
# It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps.
# In how many distinct ways can you climb to the top?

# ----------------- PATTERN -------------------- #
# 0 and 1 only ever have 1 possible path
# possible paths will always be the sum of the possible paths of the previous 2 numbers
