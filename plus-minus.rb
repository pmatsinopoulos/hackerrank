n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

positives, negatives, zeros = 0, 0, 0

arr.each do |element|
  positives += 1 if element > 0
  negatives += 1 if element < 0
  zeros += 1 if element.zero?
end

[positives, negatives, zeros].each do |result|
  puts (result/arr.size.to_f).round(5)
end
