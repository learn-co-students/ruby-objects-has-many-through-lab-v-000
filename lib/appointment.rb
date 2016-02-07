class Appointment
  attr_accessor :doctor, :date, :patient

  def initialize(date, doctor)
    @doctor = doctor
    @date = date
    self.doctor.add_appointment(self)
  end

end