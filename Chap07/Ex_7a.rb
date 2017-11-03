#99 Bottles of Beer on the Wall

puts "99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall."

num1 = 99

while num1 >= 1
  puts num1.to_s + " bottles of beer on the wall, " + num1.to_s + "bottles of beer."
  puts "Take one down and pass it around," + (num1 -= 1).to_s + " bottles of beer on the wall."


end
puts "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."
