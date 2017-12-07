require 'pry'

# create Patient class 
class Patient
# create attr_accessor for name
  attr_accessor :name 
# intialize with name 
  def initialize(name)
    @name = name
    @appointments = []
    # add appointments array to store appointments 
  end 
# create add_appointment method 
  def add_appointment(appointment)
    @appointments << appointment
  end 
# create doctors method 
  
  
end 