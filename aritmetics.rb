
def aritmetic(numbers)
  digits = []
  
  numbers.each do |value|
    digits << numbers.reduce(:*) / value
  end
    
  digits
end
  
aritmetic([1, 2, 3, 4])