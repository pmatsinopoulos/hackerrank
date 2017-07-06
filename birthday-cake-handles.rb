#!/bin/ruby

def birthdayCakeCandles(n, ar)
  # Complete this function
  ar.select {|e| e == ar.max}.size
end

n = gets.strip.to_i
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
result = birthdayCakeCandles(n, ar)
puts result;
