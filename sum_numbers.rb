def sum_numbers(numbers)
  numbers_sum  = []
  string_number = []
  end_number = []
    
  numbers.each do |number|
    numbers_sum << number.to_s
  end
  
  numbers_sum.each do |number_string|
    string_number << number_string.split("0", number_string.length)
  end
  
  string_number.each do |number_sum|
    end_number << number_sum.last.to_i
  end
  
  end_number.sum
  end
  
  sum_numbers([1200000265, 1000002360, 1670000800, 1000006002, 1000000233])