#!/bin/ruby

def timeConversion(s)
  # Complete this function
  # s: HH:MM:SSPM
  # need to be converted to
  # HH:MM:SS
  hh = s[0, 2] # in 12 hour clock this is 12a.m., 1a.m, 2, 3, 4, ...., 11a.m., 12p.m, 1, 2, 3, ...11
  am_or_pm = s[8, 2]
  if am_or_pm.downcase == 'am' && hh == '12'
    hh = '00'
  end
  if am_or_pm.downcase == 'pm'
    hh = hh.to_i + 12
    hh = 12 if hh == 24
    if hh < 10
      hh = "0#{hh}"
    end
  end
  "#{hh}:#{s[3, 2]}:#{s[6, 2]}"
end

# s = gets.strip
# result = timeConversion(s)
# puts result

