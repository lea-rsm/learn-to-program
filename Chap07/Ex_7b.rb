#Grandma

puts "HI SONNY, HOW ARE YOU? COME CLOSER SO I CAN HEAR YOU."


while true
  answer1 = gets.chomp
  if answer1 != answer1.upcase
    puts "HUH? SPEAK UP, SONNY!"
  else puts "NO, NOT SINCE " + rand(1930..1950).to_s + "."
  end
  if answer1 == "BYE"
    puts "BYE-BYE SONNY, SEE YOU TOMMOROW."
    break
  end
end
