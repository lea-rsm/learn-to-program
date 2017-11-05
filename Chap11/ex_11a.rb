#Safer picture downloading

Dir.chdir '/User/Lea/Pictures'

pic_names = Dir['/User/Lea/Pictures/*.jpg'] #where to find the pictures
puts "What would you like to call this batch?"

batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.' #progress bar

new_name = if pic_number < 10
  "#{batch_name}0#{pic_number}.jpg"
else
  "#{batch_name}#{pic_number}.jpg"
end

if File.exist?(new_name)
  puts "Warning = Batch name already exist."
  exit #kills the program

else

File.rename name, new_name
pic_number = pic_number + 1 #moves onto the next photo
end

puts # this is so we arents on the progress bar line
puts "Done!"
