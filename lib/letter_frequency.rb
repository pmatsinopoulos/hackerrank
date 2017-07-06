def isValid(string)
  # require 'debug'
  values = string.split('').group_by {|e| e}.values
  unique_sizes = values.map { |item| item.size }.uniq
  size = unique_sizes.size
  # size == 1 means same frequency
  if size == 1 ||
     size == 2 && ( (unique_sizes[0] - unique_sizes[1]).abs == 1 && (values.select {|item| item.size == unique_sizes.min}.size == 1 ||
                                                                     values.select {|item| item.size == unique_sizes.max}.size == 1) ||
                    (unique_sizes[0] - unique_sizes[1]).abs != 1 && unique_sizes.min == 1 && values.select {|item| item.size == unique_sizes.min}.size == 1)
    'YES'
  else
    'NO'
  end
end

