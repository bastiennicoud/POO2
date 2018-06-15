# MAIN
require_relative 'validator.rb'

source = ARGV[0]

# Initialize the validator
validator = Validator.new(source)

# Launch the validation
validator.validate_source

# Gets the messages
puts validator.get_messages
