#!/bin/ruby

n = gets.strip.to_i

n.times do |i|
  (n - (i + 1)).times { print ' ' }
  (i + 1).times { print '#' }
  puts
end
