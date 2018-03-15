class Appointment
  attr_accessor :date, :doctor, :patient
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) if !doctor.appointments.include? self
  end
end
