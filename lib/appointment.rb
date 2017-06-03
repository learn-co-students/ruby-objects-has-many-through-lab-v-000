class Appointment
  attr_accessor :patient, :doctor, :date

  def initialize(date, doctor)
    @doctor = doctor
    @date = date
    doctor.add_appointment(self)
  end
end
