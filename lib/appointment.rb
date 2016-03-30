class Appointment
  attr_accessor :date, :doctor, :patient
  #///CLASS METHODS///#

  #//INSTANCE METHODS///#
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
  
  def add_patient(patient)
    @patient = patient
  end

end