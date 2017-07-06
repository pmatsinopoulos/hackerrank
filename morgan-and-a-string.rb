
number_of_test_cases = gets.to_i
if number_of_test_cases < 1 || number_of_test_cases > 5
  exit 1
end

number_of_test_cases.times do |test_case_index|
  # read two lines
  first_line = gets.chomp
  second_line = gets.chomp
  puts lexicographically_minimal_string(first_line, second_line)
end
