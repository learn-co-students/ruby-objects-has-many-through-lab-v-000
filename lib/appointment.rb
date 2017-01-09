class Appointment

  attr_reader :patient
  attr_accessor :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

  def patient=(patient)
    @patient = patient
    patient.add_appointment(self)
  end


end
