require_relative './list.rb'
require_relative './array.rb'

class Queue
  def self.create(type)
    case type
    when 'list'
      return List.new()
    when 'array'
      return Array.new()
    else
      raise 'Unvalid queue type #{type}, Types are : list, array.'
    end
  end
end
