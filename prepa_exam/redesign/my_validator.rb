require_relative 'validator'
Dir.glob("./validations/**/*.rb").each {|file| require file}

class MyValidator < Validator
  validation NameStartsByCapitalRule
  validation FirstNameStartsByCapitalRule
  validation MaxPartsRule
end