require pry
class User
  attr_accessor :name, :email_address
  attr_writer :password
def initialize (name, email_address, password)
  @users_name = name
  @users_email_address = email_address
  @users_password = password
  @my_pins = []
end
def pin_it (my_pin)
  @my_pins =  @my_pins.push(my_pin)
end

def delet_pin (my_pin)
  if @my_pins.include?(my_pin)
    @my_pins.delete(my_pins)
  else
    puts "You never pinned that pin"
  end
end

binding.pry
