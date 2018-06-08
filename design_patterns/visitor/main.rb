# Visitor


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
array_index = ArrayBrowsable.new(parse_file('../../algorithmic/tree/search/functions.txt'))
puts "Creating tree index"
tree_index = TreeBrowsable.new(parse_file('../../algorithmic/tree/search/functions.txt'))

tree_searcher = TreeSearcher.new('tutu')
array_searcher = ArraySearcher.new('tutu')

array_index.browse(tree_searcher)
array_index.browse(array_searcher)

puts tree_searcher.results
puts array_searcher.results