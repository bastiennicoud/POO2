Dir.glob("./rules/**/*.rb").each {|file| require file}

class Form

  def initialize
    # Declares all the validators usable by the Form validator
    @validators = {
      required: RequiredRule.new,
      email: EmailRule.new
    }
    @values = {}
  end

  # Ask each form fields to the user
  def display_form
    @fields.each do |name, validations|
      puts "Veuillez renseigner votre #{name}"
      @values[name] = gets.chomp
    end
  end

  # Check if the form is valid
  def is_valid
    valid = false
    @fields.each do |name, validations|
      valid |= validate(name, validations)
    end
    !valid
  end

  # Performs a field validation
  def validate (name, validations)
    valid = false
    validations.each do |v|
      valid |= @validators[v].check(@values[name])
    end
    valid
  end

end