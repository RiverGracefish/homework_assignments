#!/usr/bin/env ruby

# Instead of using an iterator, put the numbers 1 through 100 in an array called "numbers"
# Create another array that has Fizz, Buzz, FizzBuzz or the number for each element of numbers
# Print out this array and you should have the same output that fizz_buzz.rb produced.

numbers = [*1..100]

numbers.map! { |n| (n % 3 == 0 && n % 5 == 0) ? 'FizzBuzz' : n }
numbers.map! { |n| (n % 3 == 0) ? 'Fizz' : n }
numbers.map! { |n| (n % 5 == 0) ? 'Buzz' : n }
puts numbers
