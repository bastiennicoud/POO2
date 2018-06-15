class NameStartsByCapitalRule

  def initialize data_parts
    @data_parts = data_parts
  end

  def check
    @data_parts.first =~ /^[A-Z]/
  end

  def message
    "#{@data_parts.first} doesn't start with a capital"
  end

end