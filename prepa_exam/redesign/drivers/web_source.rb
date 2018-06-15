require 'net/http'

class WebSource

  def initialize source
    @source = source
  end

  # Check if the driver can use this source
  def self.check_source source
    source.start_with?('http://')
  end

  # loads the source
  def load_source
    Net::HTTP.get(URI(@source)).split("\n").map {|line| line.chomp.split(' ') }
  end
end
