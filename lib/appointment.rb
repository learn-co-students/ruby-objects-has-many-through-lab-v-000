require 'pry'
class Appointment
@@all = []

attr_accessor :date, :patient, :doctor

def self.all
  @@all
end

def initialize(date,patient,doctor)
  @date = date
  @patient = patient
#  binding.pry
  @doctor = doctor
  self.class.all << self
end

end
