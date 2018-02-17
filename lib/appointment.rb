class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor) # ie. "Monday, August 1st"
    @date = date
    self.doctor = doctor
    doctor.add_appointment(self)
  end

end
