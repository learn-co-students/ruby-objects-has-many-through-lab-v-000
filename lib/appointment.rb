class Appointment
  attr_accessor :patient, :doctor, :date

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    #patient.add_appointment(self)
    doctor.add_appointment(self)
  end
end
