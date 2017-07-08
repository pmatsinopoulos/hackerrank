a = [1, 4, 1, 2, 7, 5, 2]
ac = (0..9).to_a.map { |e| a.count(e) }

puts a.inspect
puts ac.inspect

previous = 0
acc = ac.each_with_index.map do |e, index|
  if index == 0
    previous = ac[index]
  else
    previous = previous + ac[index]
  end
end

puts acc.inspect

output = Array.new(a.size)
a.each do |e|
  if ac[e] > 0
    position = acc[e]
    ac[e].downto 1 do
      position = position - 1
      output[position] = e
    end
  end
end

puts output.inspect
