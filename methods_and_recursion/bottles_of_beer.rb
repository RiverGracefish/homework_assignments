#!/usr/bin/env ruby

def bottles_of_beer(beer)
  if beer > 1
    puts "#{beer} bottles of beer on the wall, #{beer} bottles of beer.
Take one down and pass it around, #{beer - 1} bottles of beer on the wall."
    puts ''
    bottles_of_beer(beer - 1)
  elsif beer == 1
    puts "#{beer} bottle of beer on the wall, #{beer} bottle of beer.
Take one down and pass it around, #{beer - 1} bottle of beer on the wall."
    puts ''
    bottles_of_beer(beer - 1)
  else
    puts 'No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.'
  end
end

bottles_of_beer(99)
