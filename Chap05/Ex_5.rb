#Full name greeting
puts "Hello, What's your name?"
name = gets.chomp
puts "Nice! But..What's your middle name?"
name2 = gets.chomp
puts "And your last name?"
name3 = gets.chomp
puts "Fantastic! Welcome " + name + " " + name2 + " " + name3 + "!"

#Bigger, better favorite number

puts "What is your favorite number?"
num = gets.chomp

num2 = num.to_i + 1
puts "Isn't " + num2.to_s + " a better one? :)"
