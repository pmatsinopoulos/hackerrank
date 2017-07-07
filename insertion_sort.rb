def insertionSort(ar, unsorted_index)
  return '' if ar.nil? || ar[0, unsorted_index + 1].length == 0
  return puts ar[0] if ar[0, unsorted_index + 1].length == 1

  i = ar[0, unsorted_index + 1].length - 2
  e = ar[0, unsorted_index + 1][-1]
  while ar[i] >= e && i >= 0
    ar[i + 1] = ar[i]
    puts ar.join(' ')
    i -= 1
  end
  if i >= -1
    ar[i + 1] = e
    puts ar.join(' ')
  end
  # puts ar.join(' ')
end

count = gets.to_i
ar = gets.strip.split.map { |i| i.to_i }

insertionSort(ar, ar.length - 1)
