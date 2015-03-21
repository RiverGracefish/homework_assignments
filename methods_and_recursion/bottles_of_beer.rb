#!/usr/bin/env ruby

def bottles_line(number, wall = true)
  "#{number} bottle#{'s' if number != 1} of beer#{' on the wall' if wall}"
end

def sing_a_verse(number1, number2)
  puts "#{bottles_line(number1)}, #{bottles_line(number1, false)}."
  puts "Take one down and pass it around, #{bottles_line(number2)}."
  puts ''
end

def sing_last_verse
  puts "#{bottles_line('No more')}, #{bottles_line('no more', false)}."
  puts "Go to the store and buy some more, #{bottles_line(99)}."
end

def sing_a_song(leftover)
  if leftover >= 2
    sing_a_verse(leftover, leftover - 1)
  elsif leftover == 1
    sing_a_verse(leftover, 'no more')
  else
    sing_last_verse
  end
  sing_a_song(leftover - 1) if leftover > 0
end

sing_a_song(99)
# def bottles_of_beer(beer)
#   if beer > 2
#     puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer.
# Take one down and pass it around, #{beer - 1} bottles of beer on the wall."
#     puts ''
#     bottles_of_beer(beer - 1)
#   elsif beer == 2
#     puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer.
# Take one down and pass it around, #{beer - 1} bottle of beer on the wall."
#     puts ''
#     bottles_of_beer(beer - 1)
#   elsif beer == 1
#     puts "#{beer} bottle of beer on the wall, #{beer} bottle of beer.
# Take one down and pass it around, #{beer - 1} bottle of beer on the wall."
#     puts ''
#     bottles_of_beer(beer - 1)
#   else
#     puts 'No more bottles of beer on the wall, no more bottles of beer.
# Go to the store and buy some more, 99 bottles of beer on the wall.'
#   end
# end
#
# bottles_of_beer(99)
