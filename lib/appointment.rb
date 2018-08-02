class Appointment
  
  attr_accessor :doctor, :patient
  
  def initialize(doctor, patient)
    @doctor = doctor
    @patient = patient
  end
  
end