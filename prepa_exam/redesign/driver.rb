Dir.glob("./drivers/**/*.rb").each {|file| require file}

# Factory thats determine the driver to use
class Driver

  def self.create source
    @@source = source
    # Define the available sources drivers
    @@source_drivers = [
      WebSource,
      FileSource
    ]
    # Determin the driver
    self.determine_driver
    # Return the driver
    return @@driver
  end

  def self.determine_driver
    # Each source driver will check if he can load this source
    @@source_drivers.each do |driver|
      @@driver = driver.new(@@source) if driver.check_source(@@source)
    end
  end

end
