#extend the Built-in classes

class Array
  def shuffle
  array = self

  #Shuffle


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
   end

  class Integer
    def factorial
      if self <= 1
      1
    else self * (self-1).factorial
    end
   end
   #now creates the to_roman method
   def to_roman

   roman = ''

   roman = roman + 'M' * (self / 1000)
   roman = roman + 'D' * (self % 1000 / 500)
   roman = roman + 'C' * (self % 500 / 100)
   roman = roman + 'L' * (self % 100 / 50)
   roman = roman + 'X' * (self % 50 / 10)
   roman = roman + 'V' * (self % 10 / 5)
   roman = roman + 'I' * (self % 5 / 1)

   roman
   end
end
   puts [1, 2, 3, 4, 5].shuffle
   puts 7.factorial
   puts 73.to_roman
