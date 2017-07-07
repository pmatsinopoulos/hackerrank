def insertionSort(ar, unsorted_index)
  number_of_shifts = 0
  return 0 if ar.nil? || ar[0, unsorted_index + 1].length == 0
  return 0 if ar[0, unsorted_index + 1].length == 1

  i = ar[0, unsorted_index + 1].length - 2
  e = ar[0, unsorted_index + 1][-1]
  while ar[i] > e && i >= 0
    ar[i + 1] = ar[i]
    number_of_shifts += 1
    # puts ar.join(' ')
    i -= 1
  end
  if i >= -1
    ar[i + 1] = e
    # puts ar.join(' ')
  end
  # puts ar.join(' ')
  number_of_shifts
end

count = gets.to_i
ar = gets.strip.split.map { |i| i.to_i }

i = 1
number_of_shifts = 0
while i < ar.length
  number_of_shifts += insertionSort(ar, i)
  i += 1
end
# puts ar.join(' ')
puts number_of_shifts
