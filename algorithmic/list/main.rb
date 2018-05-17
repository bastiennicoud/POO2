# Main file
require_relative('node')
require_relative('list')

list = List.new()
puts list.empty?
puts list.count
list.append('tutu1')
puts list.count
list.prepend('tutu2')
puts list.getFirst
puts list.count
puts list.empty?
toto = list.takeFirst
puts toto
puts list.count
list.append('toto1')
list.append('toto2')
list.append('toto3')
list.each do |el|
  puts "Value: #{el}"
end