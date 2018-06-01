class Form

  def initialize
    @validators = {
      :required => RequiredRule.check(v),
      :email    => EmailRule.check(v)
    }
    @values = {}
  end

  # Ask each form fields to the user
  def display_form
    @fields.each do |name, validations|
      puts "Veuillez renseigner votre #{k}"
      @values[k] = gets.chomp
    end
  end

  # Check if the form is valid
  def is_valid
    valid = false
    @fields.each do |name, validations|
      valid |= validate(name, validations)
    end
    valid
  end

  # Performs a validation
  def validate name, validations
    valid = false
    validations.each do |v|
      valid |= @validators[v] @values[name]
    end
    valid
  end

end