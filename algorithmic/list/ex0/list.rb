class List

  def initialize()
    @firstNode = nil
    @lastNode = nil
    @nodeCount = 0
  end

  def append(nodeValue)
    @nodeCount += 1
    # Check if the list is empty
    if (@firstNode.nil? && @lastNode.nil?)
      # Create the element il all node
      @firstNode      = Node.new(nodeValue)
      @firstNode.next = nil
      @firstNode.prev = nil
      @lastNode       = nil
    # If one element in the list
    elsif (!@firstNode.nil? && @lastNode.nil?)
      @lastNode       = Node.new(nodeValue)
      @lastNode.next  = nil
      @lastNode.prev  = @firstNode
      @firstNode.next = @lastNode
    # Create a new element and add it to the end
    else
      tmp       = Node.new(nodeValue)
      tmp.next  = nil
      tmp.prev  = @lastNode
      @lastNode = tmp
    end
  end

  def prepend(nodeValue)
    @nodeCount += 1
    if (@firstNode.nil? && @lastNode.nil?)
      # Create the element il all node
      @firstNode      = Node.new(nodeValue)
      @firstNode.next = nil
      @firstNode.prev = nil
      @lastNode       = nil
    # If one element in the list
    elsif (!@firstNode.nil? && @lastNode.nil?)
      @lastNode       = @firstNode
      @firstNode      = Node.new(nodeValue)
      @firstNode.prev = nil
      @firstNode.next = @lastNode
      @lastNode.prev  = @firstNode
    else
      tmp      = Node.new(nodeValue)
      tmp.next = @firstNode
      tmp.prev = nil
      @firstNode = tmp
    end
  end

  # return the node value
  def getFirst
    @firstNode.value
  end

  # return the node value
  def getLast
    if @lastNode.nil?
      @firstNode.value
    else
      @lastNode.value
    end
  end

  def takeFirst
    @nodeCount -= 1
    if (@firstNode.nil? && @lastNode.nil?)
      return nil
    elsif (!@firstNode.nil? && @lastNode.nil?)
      tmp        = @firstNode.value
      @firstNode = nil
      return tmp
    else
      tmp = @firstNode.value
      if (@firstNode.next == @lastNode)
        @firstNode      = @lastNode
        @lastNode       = nil
        @firstNode.prev = nil
      else
        @firstNode      = @firstNode.next
        @firstNode.prev = nil
      end
      return tmp
    end
    return nil
  end

  def takeLast
    @nodeCount -= 1
    if (@firstNode.nil? && @lastNode.nil?)
      return nil
    elsif (!@firstNode.nil? && @lastNode.nil?)
      tmp = @firstNode.value
      @firstNode = nil
      return tmp
    else
      tmp = @lastNode.value
      if (@lastNode.prev == @firstNode)
        @lastNode = nil
        @firstNode.next = nil
      else
        @lastNode = @lastNode.prev
        @lastNode.next = nil
      end
      return tmp
    end
    return nil
  end

  def count
    @nodeCount
  end

  def empty?
    (@firstNode.nil? && @lastNode.nil?)
  end

  def each
    cursor = @firstNode
    while cursor
      yield cursor.value
      cursor = cursor.next
    end
  end

end
