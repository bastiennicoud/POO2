require_relative 'form.rb'

class UserForm < Form

  def initialize
    super
    # Fill the fields you want by default in our form
    @fields = {
      :name => [:required],
      :email => [:required, :email]
    }
  end

  # Adds new fielt to the forn dynamically
  def add_field name, validations
    @fields[name] = validations
  end

end