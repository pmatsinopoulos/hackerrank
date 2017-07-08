# Version of fraud_number_of_notifications_2 is significantly slower than the fraud_number_of_notifications
#
def insertion_sort(already_sorted, new_element)
  position = already_sorted.index { |e| e > new_element }
  if position
    already_sorted.insert(position, new_element)
  else
    already_sorted.push(new_element)
  end
end

def find_median(already_sorted)
  return nil if already_sorted.empty?
  # require 'debug'
  # ar = counting_sort(ar)
  # ar = ar.sort
  if already_sorted.length % 2 == 1 # odd number of numbers
    median = already_sorted[already_sorted.length / 2]
  else
    median = (already_sorted[already_sorted.length / 2 - 1] + already_sorted[already_sorted.length / 2]).to_f / 2
  end
  median
end

def fraud_number_of_notifications(d, expenditures)
  return 0 if expenditures.nil? ||
              expenditures.empty? ||
              d > expenditures.length ||
              d.zero?

  i = d
  number_of_notifications = 0
  already_sorted = []
  element_out = -1
  while i < expenditures.length
    # require 'debug'
    expenditure = expenditures[i]

    d_array = expenditures[(i - 1 - d + 1)..(i - 1)]
    element_in = d_array.last

    if already_sorted.empty?
      # element_out = d_array.first
      already_sorted = d_array.sort
    else
      # we have the previous array. We need to remove the previous element
      # and then ask for insertion sort for the new element
      position = already_sorted.index { |e| e == element_out }
      if position
        already_sorted.delete_at(position)
      end
      insertion_sort(already_sorted, element_in)
    end

    median = find_median(already_sorted)

    if expenditure > 0 && expenditure >= (median * 2)
      number_of_notifications += 1
    end

    element_out = expenditures[(i - 1 - d + 1)]
    i += 1
  end

  number_of_notifications
end
