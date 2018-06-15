# MAIN
require_relative 'my_validator'

source = ARGV[0]

# Initialize the validator
validator = MyValidator.new(source)

# Launch the validation
validator.validate_source

# Gets the messages
puts validator.get_messages
