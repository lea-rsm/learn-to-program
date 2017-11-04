#dictionary sort




def dictionary_sort array
  recursive_dic_sort array, []

end

def recursive_dic_sort unsorted_array, sorted_array

    if unsorted_array.length <= 0
      return sorted_array
    end

    smallest = unsorted_array.pop #taking out the last word of the array
    still_unsorted = [] #creating an array

    unsorted_array.each do |word|
      if
        word.downcase < smallest.downcase
      still_unsorted.push smallest
      smallest = word
    else
    still_unsorted.push word
    end

end

sorted_array.push smallest
recursive_dic_sort still_unsorted, sorted_array

end

puts (dictionary_sort ['Funny', 'cat', 'love', 'Terrific'])
