require_relative('node')

class WordSearchTree

  def initialize(elements = [])
    @root = Node.new(nil)
    elements.each do |el|
      add_word(el)
    end
  end

  def add_word(word)
    word.split("").each do |char|
      # Check if the char exists une the childs nodes
      # Create the char in the root childrends
      # pass to the next char
    end
  end

  def search()

    # When the word is found
    recompose_word(leafNode, accumulator = '')
  end

  def recompose_word(leafNode, accumulator)
    accumulator = `#{leafNode.value}#{accumulator}`
    if leafNode.parent.nil?
      accumulator
    else
      recompose_word(leafNode.parent, accumulator)
    end
  end

end