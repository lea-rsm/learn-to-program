#orange tree

class OrangeTree
  def initialize #automatically called on an object
    @height = 0
    @orange_num = 0
    @alive = true
  end
  def height
    if @alive
      @height
    else
      'The tree is dead..'
    end
  end

  def count_the_oranges
    if @alive
      @orange_num
    else
      'The tree is dead.. so no oranges'
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.4 #the trees grows
      @orange_num = 0 #old oranges fall off

      if @height > 10 && rand(2) > 0
        #tree dies
        @alive = false
        "The tree is too old. He has died"
      elsif @height > 2
        #new oranges grow

        @orange_num = (@height * 15 - 25).to_i
        "This year your tree has grew to #{@height}m tall "
        "and produced #{@orange_num} oranges"
      else "This year your tree has grew to #{@height}m tall"
        "but is still too young to produced any oranges"
      end
    else
      'A year later, the tree is still dead'
    end
  end

  def pick_an_orange
    if @alive
      if @orange_num > 0
        @orange_num = @orange_num - 1
        "You pick a juicy, delicious orange!"

      else
        'You search every branch but no oranges in sight!'
      end
    else
      "A dead tree has no oranges to pick"
    end
 end
end

ot = OrangeTree.new
23.times do
  ot.one_year_passes
end

puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)
