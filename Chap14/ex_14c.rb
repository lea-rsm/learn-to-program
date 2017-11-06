#Program logger

def log string, &block
    puts "Beggining " + string + "..."
  result = block.call
  puts "..." + string + " finished, returning:" + result.to_s

end

log 'outer block' do #inside there are 2 other log
  log 'some little block' do
    puts 2 + 3
  end
  log 'yet another block' do
  puts  '!god evol I'.reverse
  end
  '0' == 0
end
