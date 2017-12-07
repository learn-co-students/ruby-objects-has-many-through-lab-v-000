require 'pry'

# create Appointment class 
class Appointment 
# create attr_accessor patient and doctor
  attr_accessor :doctor, :date, :patient
# initialize with date and doctor instance
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    @appointments = []
  end 
# create patient method 
  def patient
  # - this method will show the relationship between  patient and appointment 
    # where are appointments and patients connected? in the @appointment array
    binding.pry
  # - we do this by setting the instance = attr_accessor 
  end 

# create doctor method 
  # - this method will show the relationship between doctor and appointment 

  
  
end 