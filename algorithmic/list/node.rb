class Node

  @value = Object
  @next = String
  @prev = String

  def initialize(value, nextNode = nil, prevNode = nil)
    @value = value
    @next = nextNode
    @prev = prevNode
  end

  attr_accessor(:next, :prev, :value)

  def first?
    @prev == nil
  end

  def last?
    @next == nil
  end

end
