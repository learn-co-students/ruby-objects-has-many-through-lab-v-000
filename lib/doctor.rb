require 'pry' 

# create Doctor class
class Doctor 
# create attr_accessor for name to set name 
  attr_accessor :name, :appointments 
# initialize method w/name and @appointments array = []
  def initialize(name)
    @name = name
    @appointments = [] # when will you be adding appointments to this array? 
  end 
# create name method - above in attr_accessor 
  
# create add_appointment method w/(appointment) argument
  def add_appointment(appointment)
  # - this method will show the appointment belongs to the doctor 
    @appointments << appointment
    # how are appointments and doctors connected? through the @appointments array
    appointment.doctor = self
  # - this is shown by giving a Doctor instance an appointment attr_accessor. Then we set that appointment attribute to an instance of the Doctor  class.
  end 

# create appointments method - this should display the contents of the appointments array 
  def appointments 
    @appointments
  end 

# create patients method 
  def patients 
  # - this method will show the relationship between patients and appointments 
    # how are patients shown? through the appointments array
    self.appointments.collect do |a|
      a.patient
    end 
  end 
end 





















