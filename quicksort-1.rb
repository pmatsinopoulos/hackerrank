def  partition( ar)
  return [] if ar.length.zero?
  return ar if ar.length == 1

  left, equal, right = [], [], []
  pivot = ar[0]
  equal.push pivot

  i = 1
  while i < ar.length
    if ar[i] < pivot
      left.push ar[i]
    elsif ar[i] == pivot
      equal.push ar[i]
    else
      right.push ar[i]
    end
    i += 1
  end
  (left + equal + right).join(' ')
end

cnt = gets.to_i
ar = STDIN.gets.chomp.split(' ').map{ |x| x.to_i }
puts partition(ar)
