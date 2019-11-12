require 'date'

def dates(first_date, final_date, day)
  
  dates = []
  first_mon = first_date.mon 
  final_mon = final_date.mon
  final_month = first_mon + final_mon - 1 
  first_year = first_date.year
  final_year = final_date.year
  final_years = (final_year - first_year)
  
  if final_years == 0 
    (first_mon..final_mon).each do |numero1|
      dates.push(Date.new(first_year, numero1, day)) 
    end   
  end
  
  return dates

end

dates(Date.new(2017,01,2), Date.new(2017,5,8), 4)















