#Building a playlist
#Shuffle

def shuffle array
  shuffle_1 = []

  while array.length > 0

    rand_index = rand(array.length) #picks out one random element from the array

# Now go through each item in the array,
#putting them all in a new_array exept
#for the randomly chosen one, which foes into shuffle_1

    curr_index = 0
    new_array = []

    array.each do |item|
      if curr_index == rand_index
        shuffle_1.push item
      else
        new_array.push item
      end

      curr_index = curr_index +1
    end

    #replace the original array with the new, smaller array
array = new_array
end
 shuffle_1
 end

 puts shuffle([1,2,3,4,5,6,7])



Dir.chdir['/User/Lea/Music'] #change directory
songs = shuffle(Dir['**/*.{mp3}'] #search for mp3 files in current directory

File.open 'playlist.m3u', 'w' do |f| #m3u creates playlist
songs.each do |song|
f.write song+"/n" #makes an escape
end
end
puts "Done"
