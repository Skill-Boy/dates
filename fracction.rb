#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
  numbers_counter_negative = 0
  numbers_counter_zero = 0
  numbers_counter_positive = 0

  arr.each do |numbers|
    next numbers_counter_negative += 1 if numbers.negative? 
    next numbers_counter_zero += 1 if numbers.zero?
    numbers_counter_positive += 1 if numbers.positive?
  end

  puts numbers_counter_positive.fdiv(arr.length).round(6)
  puts numbers_counter_negative.fdiv(arr.length).round(6)
  puts numbers_counter_zero.fdiv(arr.length)
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr
