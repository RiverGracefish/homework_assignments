#!/usr/bin/env ruby

string = 'this is a string to practice with'

puts string
puts string.capitalize
puts string.upcase
puts string.capitalize.gsub('string', "'string'")
puts "The string '#{string}' has #{string.length} characters"
puts string.reverse
puts "#{(string[20..28] * 3).strip}!"
