require_relative('word_search_tree')

def parse_file(path)
  words = []
  f = File.open(path, "r")
  f.each_line do |line|
    words << line
  end
  f.close
  return words
end

searchable = WordSearchTree.new(parse_file('./functions.txt'))

searchable.search(input)