def lexicographically_minimal_string(first, second)
  result = ''
  first_array = first.split('') rescue []
  second_array = second.split('') rescue []
  while first_array.length > 0 || second_array.length > 0
    first_char = first_array.first
    second_char = second_array.first
    if first_char && second_char
      if first_char < second_char
        char_to_add = first_char
        first_array.shift
      else
        char_to_add = second_char
        second_array.shift
      end
    elsif first_char && second_char.nil?
      char_to_add = first_char
      first_array.shift
    elsif first_char.nil? && second_char
      char_to_add = second_char
      second_array.shift
    else
      break
    end
    result = "#{result}#{char_to_add}"
  end
  result
end
