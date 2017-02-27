class Stack
  def initialize(array=[])
    @store = Array.new
    array.each do |x|
      @store.push(x)
    end
  end

  def push(element)
    @store.push(element)
  end

  def pop
    return @store.pop
  end

  def top
    return @store.last
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
