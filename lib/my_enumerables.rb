module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    self.each do |elem|
      yield(elem, index)
      index += 1
    end
    self
  end
  
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    self.my_each do |elem|
      yield elem 
    end
  end
end

[1,2,3,4,5].my_each_with_index do |elem, index|
  p elem
  p index
end
