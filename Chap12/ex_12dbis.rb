#Birthday helper

filename = "birthday.txt"

#load in the birthdates
birth_dates = {}
File.read(filename).each_line do |line|
  line = line.chomp

  #find the index of the firts comman so we know when the name ends

  first_comma = 0
  while line[first_comma] != ',' &&
      first_comma < line.length
      first_comma = first_comma + 1
    end

    name = line[0..(first_comma - 1)]
    date = line[-12..-1]

    birth_dates[name] = date
  end

  puts "Whose birthday would you like to know?"
  name = gets.chomp
  date = birth_dates[name]

  if date == nil
    puts "I don't know that one"

  else
    puts date[0..5]
  end
