# The Appointment model:

# The Appointment class needs a class variable @@all that begins as an empty array.

class Appointment
  attr_accessor :date, :doctor, :patient

  @@all = []
  
  # An Appointment should be initialized with a date (as a string, like "Monday, August 1st"), a patient, and a doctor. The Appointment should be saved in the @@all array.
  
    def initialize(patient, doctor, date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  
# The Appointment class needs a class method .all that lists each Appointment in the class variable.

def self.all
  @@all 
end
end 

