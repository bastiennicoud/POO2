class FirstNameStartsByCapitalRule

  def initialize data_parts
    @data_parts = data_parts
  end

  def check
    @data_parts.last =~ /^[A-Z]/
  end

  def message
    "#{@data_parts.last} doesn't start with a capital"
  end

end