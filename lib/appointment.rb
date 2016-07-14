class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    # Set Date
    @date = date
    # Set Doctor
    @doctor = doctor
    # i dont fucking know
    self.doctor.add_appointment(self)
  end

end
