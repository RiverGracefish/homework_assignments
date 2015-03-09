#!/usr/bin/env ruby

seconds_in_a_minute = 60
minutes_in_an_hour = 60
hours_in_a_day = 24
days_in_a_week = 7
weeks_in_a_year = 52
twenty_years_old = 20
hundred_years_old = 100
seconds_in_an_hour = seconds_in_a_minute * minutes_in_an_hour
seconds_in_a_day = seconds_in_a_minute * minutes_in_an_hour * hours_in_a_day
seconds_in_a_week = seconds_in_a_minute * minutes_in_an_hour * hours_in_a_day * days_in_a_week
seconds_in_twenty_years = seconds_in_a_day * days_in_a_week * weeks_in_a_year * twenty_years_old
seconds_in_hundred_year = seconds_in_a_day * days_in_a_week * weeks_in_a_year * hundred_years_old

puts "There are #{seconds_in_a_minute} seconds in a minute."
puts "There are #{minutes_in_an_hour} minutes in an hour."
puts "There are #{hours_in_a_day} hours in a day."
puts "There are #{days_in_a_week} days in a week."
puts 'That means there are:'
puts "  #{seconds_in_an_hour} seconds in an hour,"
puts "  #{seconds_in_a_day} seconds in a day,"
puts "  #{seconds_in_a_week} seconds in a week,"
puts "That means when you turn 20, you've been alive for #{seconds_in_twenty_years} seconds,"
puts "and if you make it to 100, you will have lived #{seconds_in_hundred_year} seconds. Make them count!"
