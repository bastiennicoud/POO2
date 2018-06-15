class MaxPartsRule

  def initialize data_parts
    @data_parts = data_parts
  end

  def check
    @data_parts.size == 2
  end

  def message
    "#{@data_parts.join(' ')} has #{@data_parts.size} parts, only 2 allowed"
  end

end