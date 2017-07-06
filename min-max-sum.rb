arr = gets.strip
arr = arr.split(' ').map(&:to_i)

min = arr.sort[0, 4].reduce(0) { |result, element|  result += element }
max = arr.sort[-4..-1].reduce(0) { |result, element|  result += element}
puts "#{min} #{max}"
