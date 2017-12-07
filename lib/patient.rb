require 'pry'

# create Patient class 
class Patient
# create attr_accessor for name
  attr_accessor :name, :appointments
# intialize with name 
  def initialize(name)
    @name = name
    @appointments = []
    # add appointments array to store appointments 
  end 
# create add_appointment method 
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
    # set appointment instance to attr_accessor
  end 
# create doctors method 
  def doctors 
    # how are doctors and appts connected? 
    # they are connected through the @appts array
    appointments.collect do |a|
      a.doctor
    end
  end 
  
  
end 