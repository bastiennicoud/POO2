require_relative('word_search_tree')

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

puts "Creating tree index"
tree_index = WordSearchTree.new(parse_file('./functions.txt'))

puts "Predict the word end."
puts "Type letters :"

needle = gets

puts tree_index.predict(needle)