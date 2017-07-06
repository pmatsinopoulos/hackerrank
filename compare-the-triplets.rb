#!/bin/ruby

def solve(a0, a1, a2, b0, b1, b2)
  # Complete this function
  result1 = 0
  result2 = 0
  [[a0, b0], [a1, b1], [a2, b2]].each do |a, b|
    if a > b
      result1 += 1
    elsif b > a
      result2 += 1
    end
  end

  [result1, result2]
end

a0, a1, a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0, b1, b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i
result = solve(a0, a1, a2, b0, b1, b2)
print result.join(" ")
