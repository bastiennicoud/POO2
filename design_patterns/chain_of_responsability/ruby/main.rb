require_relative 'user_form.rb'

my_form = UserForm.new()

my_form.display_form

if my_form.is_valid
  puts 'Le formulaire est validé'
else
  puts 'Les données ne sont pas valides'
end