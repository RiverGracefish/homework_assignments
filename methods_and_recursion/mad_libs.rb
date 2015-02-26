#!/usr/bin/env ruby

def question(give_me)
  print "#{give_me}"
  gets.chomp
end

adj = question("Give me an adjective: ")
adj2 = question("Give me another adjective: ")
noun = question("Give me a noun: ")
noun2 = question("Give me another noun: ")
noun3 = question("Give me a plural noun: ")
game = question("Give me a game: ")
noun4 = question("Give me another plural noun: ")
verb = question("Give me a verb ending in 'ing': ")
verb2 = question("Give me another verb ending in 'ing': ")
noun5 = question("Give me another plural noun: ")
verb3 = question("Give me another verb ending in 'ing': ")
noun6 = question("Give me another noun: ")
plant = question("Give me a plant: ")
body = question("Give me a part of body: ")
place = question("Give me a place: ")
verb4 = question("Give me another verb ending in 'ing': ")
adj3 = question("Give me another adjective: ")
number = question("Give me a number: ")
noun7 = question("Give me another plural noun: ")

puts "A vacation is when you take a trip to some #{adj} place"
puts "with your #{adj2} family. Usually you go to some place"
puts "that is near a/an #{noun} or up on a/an #{noun2}."
puts "A good vacation place is one where you can ride #{noun3}"
puts "or play #{game} or go hunting for #{noun4}. I like"
puts "to spend my time #{verb} or #{verb2}."
puts 'When parents go on a vacation, they spend their time eating'
puts "three #{noun5} a day, and fathers play golf, and mothers"
puts "sit around #{verb3}. Last summer, my little brother"
puts "fell in a/an #{noun6} and got poison #{plant} all"
puts "over his #{body}. My family is going to go to (the)"
puts "#{place}, and I will practice #{verb4}. Parents"
puts 'need vacations more then kids because parents are always very'
puts "#{adj3} and because they have to work #{number}"
puts "hours every day all year making enough #{noun7} to pay"
puts 'for the vacation.'
