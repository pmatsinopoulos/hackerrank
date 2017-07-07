def find_median(ar)
  return nil if ar.empty?
  # require 'debug'
  ar = ar.sort
  if ar.length % 2 == 1
    ar[ar.length / 2]
  else
    ar[ar.length / 2 - 1]
  end
end
