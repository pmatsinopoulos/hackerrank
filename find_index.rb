v = gets
size = gets.to_i
numbers = gets.chomp

def find_index(v, array)
  require 'debug'
  array.split(' ').map(&:to_s).index(v)
end

puts find_index(v, numbers)
