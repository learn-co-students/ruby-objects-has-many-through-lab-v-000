class Appointment
  attr_accessor :date, :doctor, :appointments, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
end
