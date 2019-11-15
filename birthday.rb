require 'json'
require 'stringio'

def birthday(squares, day, month)
  
  result_sum = 0
  squares.each_cons(month).map(&:sum).each do |squares| 
    result_sum += 1 if squares == day 
  end
  result_sum  
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

s = gets.rstrip.split.map(&:to_i)

dm = gets.rstrip.split

d = dm[0].to_i

m = dm[1].to_i

result = birthday s, d, m

fptr.write result
fptr.write "\n"

fptr.close()