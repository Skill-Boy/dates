#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
  character = "#"
  value = character

  (1..n).each do |iteration|
    puts " " * (n - iteration) + value
    value += character * 1
  end
end

n = gets.to_i

staircase n