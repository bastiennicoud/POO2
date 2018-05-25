require_relative('node')

class WordSearchTree

  # Constructor
  # * Create base node
  # * Index words passed in parameter
  def initialize(elements = [])
    @root = Node.new(nil)
    elements.each do |el|
      index_word(el)
    end
  end

  # Index a word in the tree
  def index_word(word)
    wordArray = word.split('')
    add_child(@root, wordArray, word)
  end

  # Recursively add the letters of the word in the tree
  def add_child(base_node, wordArray, word)
    letter = wordArray.shift()
    if (letter)
      base_node.words << word
      if (base_node.childrens.key?(letter))
        add_child(base_node.childrens[letter], wordArray, word)
      else
        base_node.add_children(letter)
        add_child(base_node.childrens[letter], wordArray, word)
      end
    else
      base_node.final = true
      return
    end
  end

  # Check if the word exists in the tree
  def search(needle)
    tmp = @root
    needle.split("").each do |char|
      if (tmp.childrens.key?(char))
        tmp = tmp.childrens[char]
        if (tmp.childrens.empty? && tmp.final == true)
          return true
        else
          return false
        end
      else
        return false
      end
    end
  end

  # Return all possible ends for the needle
  def predict(needle)
    chars = needle.split('')
    return move_to(@root, chars, needle)
  end

  # Move in the array to the last char of the needle
  def move_to(base_node, chars, word)
    letter = chars.shift()
    if (letter)
      if (base_node.childrens.key?(letter))
        move_to(base_node.childrens[letter], chars, word)
      else
        return "No results"
      end
    else
      if (base_node.final)
        return word
      else
        return base_node.words
      end
    end
  end

end