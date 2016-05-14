require './array_iterator.rb'

arr = ["red", "blue", "green"]
iterator = ArrayIterator.new(arr)
while iterator.has_next?
  p iterator.next_item
end
