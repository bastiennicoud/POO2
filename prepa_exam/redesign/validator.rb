require_relative 'driver'
Dir.glob("./validations/**/*.rb").each {|file| require file}

class Validator

  # Initialize new validator passing it the source
  def initialize source
    @messages = []
    # Loads the driver
    @driver = Driver.create(source)
    # Define the validations cheks you want
    @validations = [
      NameStartsByCapitalRule,
      FirstnameStartsByCapitalRule,
      MaxPartsRule
    ]
    # Sets the source
    @source = source
    # Performs the loading of the source
    self.load_source
  end

  # Loads the source by checking the diffrent drivers
  def load_source
    # Loads the source with the selected driver
    @datas = @driver.load_source
  end

  # Performs the validations for each datas
  def validate_source
    @datas.each do |data_parts|
      @validations.each do |validation_rule|
        rule = validation_rule.new(data_parts)
        @messages << rule.message unless rule.check
      end
    end
  end

  def get_messages
    @messages
  end

end
