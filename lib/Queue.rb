class Queue
  def initialize(array=[])
    @store = Array.new
    array.each do |x|
      @store.push(x)
    end
  end

  def enqueue(element)
    @store.push(element)
  end

  def dequeue
    return @store.shift
  end

  def front
    return @store.first
  end

  def size
    return @store.length
  end

  def empty?
    return size == 0
  end

  def to_s
    return @store.to_s
  end
end
