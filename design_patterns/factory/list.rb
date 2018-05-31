require_relative('../../algorithmic/list/node')
require_relative('../../algorithmic/list/list')

class ListQueue

  def initialize ()
    @list = List.new()
  end

  def empty?
    @list.empty?
  end

  def size
    @list.count
  end

  def enqueue(value)
    @list.append(value)
  end

  def dequeue
    @list.takeFirst
  end

end
