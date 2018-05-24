class Node

  def initialize(val, childrens = {})
    @value = val
    @childrens = childrens
  end

  attr_accessor(:childrens, :value)

  def add_children(char)
    @childrens[char] = Node.new(char)
  end

end