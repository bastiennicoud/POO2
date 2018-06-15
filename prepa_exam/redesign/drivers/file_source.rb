class FileSource

  def initialize source
    @source = source
  end

  # Check if the driver can use this source
  def self.check_source source
    File.exist?(source)
  end

  # loads the source
  def load_source
    File.readlines(@source).map {|line| line.chomp.split(' ') }
  end
end