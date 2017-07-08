def counting_sort(ar)
  ac = (0..200).to_a.map { |e| ar.count(e) }

  previous = 0
  acc = ac.each_with_index.map do |e, index|
    if index == 0
      previous = ac[index]
    else
      previous = previous + ac[index]
    end
  end

  # returns the AC and ACC arrays
  [ac, acc]
end

def find_median(ar)
  return nil if ar.empty?
  # require 'debug'
  # ar = counting_sort(ar)
  ar = ar.sort
  if ar.length % 2 == 1 # odd number of numbers
    median = ar[ar.length / 2]
  else
    median = (ar[ar.length / 2 - 1] + ar[ar.length / 2]).to_f / 2
  end
  median
end

def find_median2(ar, acc, element_in, element_out)
  # require 'debug'
  return nil if ar.empty?

  if acc.empty?
    ac, acc = counting_sort(ar)
  else
    if element_in > element_out
      j = element_out
      while j < element_in
        acc[j] -= 1
        j += 1
      end
    elsif element_in < element_out
      j = element_in
      while j < element_out
        acc[j] += 1
        j += 1
      end
    else
      # j = element_in
      # while j < acc.size
      #   acc[j] += 1
      #   j += 1
      # end
    end
  end

  if ar.length % 2 == 1

    middle_position = ar.length / 2
    median = find_element(acc, middle_position)

  else
    left_middle_position = ar.length / 2 - 1
    left = find_element(acc, left_middle_position)

    right_middle_position = ar.length / 2
    right = find_element(acc, right_middle_position)

    median = (left + right).to_f / 2
  end

  [median, acc]
end

def find_element(acc, position)
  acc.index { |e| e > position }
end

def fraud_number_of_notifications(d, expenditures)
  return 0 if expenditures.nil? ||
              expenditures.empty? ||
              d > expenditures.length ||
              d.zero?

  i = d
  number_of_notifications = 0
  acc = []
  element_out = -1
  element_in = -1
  while i < expenditures.length
    expenditure = expenditures[i]
    d_array = expenditures[(i - 1 - d + 1)..(i - 1)]

    median, acc = find_median2(d_array, acc, element_in, element_out)

    element_out = d_array.first

    # puts "i = #{i} (median: #{median} and median * 2 = #{median * 2} and d_array: #{d_array.join(' ')} and expenditure: #{expenditure})"
    if expenditure > 0 && expenditure >= (median * 2)
      number_of_notifications += 1
    end
    element_in = expenditures[i]
    i += 1
  end

  number_of_notifications
end
