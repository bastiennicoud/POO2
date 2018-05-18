require_relative('node')

class WordSearchTree
  
  def initialize(elements = [])
    elements.each do |el|
      add_word(el)
    end
  end
  
  def add_word(word)
    word.split("").each do |char|
      puts char
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