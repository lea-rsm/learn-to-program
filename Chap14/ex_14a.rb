#profiling

def profile(block_description, &block)
  profile_on = true #to activate or desactivate profiling

  start_time = Time.new #before executed
  block.call #code executed
  duration = Time.new - start_time #how long it took
  puts "#{block_description}: #{duration} seconds."

  profile '25000 doublings' do
    number = 1
    25000.times do
      number = number + number
  end

  puts "#{number.to_s.length} digits" #number of digits of this number
end
profile 'count ot a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end
end
