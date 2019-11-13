require 'date'

def dates(first_date, final_date, day)
  dates = []
  first_mon = first_date.mon 
  final_mon = final_date.mon
  final_month = first_mon + final_mon - 1 
  first_year = first_date.year
  final_year = final_date.year
  final_years = final_year - first_year
  
return [] unless final_years.zero?
  (first_mon..final_mon).each do |month|
    dates.push(Date.new(first_year, month, day)) 
  end

dates

end

dates(Date.new(2017, 01, 2), Date.new(2017, 5, 8), 4)