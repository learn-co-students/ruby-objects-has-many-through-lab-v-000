class Appointment
  attr_accessor :doctor

  def initialize(doctor, date)
    @doctor = doctor
    @date = date
    doctor.appointments = self
  end
end
