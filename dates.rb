require 'date'

def dates(first_date, final_date, day)
  
  array_date = []
  
  first_mon = first_date.mon 
  final_mon = final_date.mon
  final_month = first_mon + final_mon -1 

  first_year = first_date.year
  final_year = final_date.year
  
  final_year = (final_year - first_year)

  total = (final_year + final_month)
  
  final_year == 0 ?
  (first_mon..final_mon).each do |numero1|
      array_date << Date.new(first_year, numero1, day) 
  end

  : 
  
  (first_mon..final_year*12+total-1).each do |numero2|
      array_date << Date.new(first_year, numero2, day)
  end   

  return array_date

end

dates(Date.new(2017,01,2), Date.new(2017,5,8), 4)







