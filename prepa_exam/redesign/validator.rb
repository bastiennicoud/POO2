require_relative 'driver'

class Validator

  # Initialize new validator passing it the source
  def initialize source
    @messages = []
    # Loads the driver
    @driver = Driver.create(source)
    # Define the validations cheks you want
    @validations = []
    set_validators
    # Performs the loading of the source
    load_source
  end

  def set_validators
    self.class.validators.each {|rule_name| add_validation_rule(rule_name)}
  end

  class << self
    def validation rule_name
      (@validators ||= []) << rule_name
    end
    attr_reader :validators
  end

  def add_validation_rule rule
    @validations << rule
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
