require_relative('word_search_tree')
require 'benchmark'

puts "Parsing file"
def parse_file(path)
  words = []
  f = File.open(path, "r")
  f.each_line do |line|
    words << line.chomp
  end
  f.close
  return words
end

puts "Creating array index"
array_index = parse_file('../search/functions.txt')
puts "Creating tree index"
tree_index = WordSearchTree.new(parse_file('./functions.txt'))

Benchmark.bmbm do |x|
  #
  # Search in arrays
  #
  x.report("Search 'agentenabled' in an array :           ") do
    array_index.include?("agentenabled")
  end
  x.report("Search 'attraccessorwithdefault' in an array :") do
    array_index.include?("attraccessorwithdefault")
  end
  x.report("Search 'xchr' in an array :                   ") do
    array_index.include?("xchr")
  end
  x.report("Search 'tryenter' in an array :               ") do
    array_index.include?("tryenter")
  end

  #
  # Search in tree
  #
  x.report("Search 'agentenabled' in a tree :           ") do
    tree_index.search("agentenabled")
  end
  x.report("Search 'attraccessorwithdefault' in a tree :") do
    tree_index.search("attraccessorwithdefault")
  end
  x.report("Search 'xchr' in a tree :                   ") do
    tree_index.search("xchr")
  end
  x.report("Search 'tryenter' in a tree :               ") do
    tree_index.search("tryenter")
  end
end

puts "Predict the word end."
puts "Type letters :"

needle = gets

puts tree_index.predict(needle)
