#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
  a_t = gets.strip
  a[a_i] = a_t.split(' ').map(&:to_i)
end

diagonal1 = 0
diagonal2 = 0
n.times do |i|
  diagonal1 += a[i][i]
  diagonal2 += a[i][n-(i + 1)]
end

result = diagonal1 - diagonal2

puts result.abs
