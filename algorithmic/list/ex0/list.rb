class List

  @firstNode = Node;
  @lastNode = Node;

  def initialize()
  end

  def append(nodeValue)
    # Check if the list is empty
    if (@firstNode.empty? && @lastNode.empty?) {
      # Create the element il all node
      @firstNode = Node.new(nodeValue)
      @firstNode.next = @firstNode
      @firstNode.prev = @firstNode
    }
    Node.new(nodeValue)
  end

  def prepend(nodeValue)
  end

  def getFirst
  end

  def getLast
  end

  def takeFirst
  end

  def takeLast
  end

  def count
  end

  def empty?
  end

  def each
    yield
  end

end
