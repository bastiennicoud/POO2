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

tree_index = WordSearchTree.new(parse_file('./functions.txt'))

puts "Entrez le mot a rechercher :"

needle = gets

puts "Votre mot : #{needle}"

if (tree_index.search(needle))
  puts "Le mot recherché existe"
else
  puts "Le mot n'exists pas"
end
