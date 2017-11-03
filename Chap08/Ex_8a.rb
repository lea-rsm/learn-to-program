#Building and sorting an array

puts "Write as many words as you want, one per line."
puts "And when you're done, just press enter on an empty line"

#we create an array
words = []

#we loop until an empty line
while true
  word = gets.chomp
  if word == ''
    break
  end

  #we put each word in the array
  words.push word
end

#We return the sorted array
puts "Sorted Version:"

puts words.sort
