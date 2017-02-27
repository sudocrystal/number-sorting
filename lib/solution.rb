require './Stack.rb'
require './Queue.rb'

def reorder(q)
  # create auxilary storage for negative numbers
  s = Stack.new

  # remember how many numbers are in the queue to start
  oldSize = q.size
  # go through the list of numbers
  oldSize.times do
    n = q.dequeue
    # move negative numbers onto the aux stack
    # cycle all positive numbers to the end
    if n < 0
      s.push(n)
    else
      q.enqueue(n)
    end
  end

  # remember how many elements will need to be cycled after
  # adding the negative numbers back into the queue
  newSize = q.size
  # get all the negativ numbers out of the stack and into the queue
  while !s.empty?
    q.enqueue(s.pop)
  end
  # cycle all the positive numbers from the front of
  # the queue to the end
  newSize.times do
    q.enqueue(q.dequeue)
  end

  return q
end
