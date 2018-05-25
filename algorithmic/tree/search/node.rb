class Node

  # Constructor
  # * Store the value
  # * Initialize childrens
  def initialize(val, childrens = {})
    @value = val
    @childrens = childrens
  end

  attr_accessor(:childrens, :value)

  # Add a new char to the childrens array
  def add_children(char)
    @childrens[char] = Node.new(char)
  end

end