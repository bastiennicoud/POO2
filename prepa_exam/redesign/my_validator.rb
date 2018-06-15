require_relative 'validator'
Dir.glob("./validations/**/*.rb").each {|file| require file}

class MyValidator < Validator
  validation NameStartsByCapitalRule
  validation FirstnameStartsByCapitalRule
  validation MaxPartsRule
end