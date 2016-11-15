class Appointment
 attr_accessor :doctor, :patient

  def initialize(date, doctor)
    self.doctor = doctor
    doctor.add_appointment(self)
  end

end
