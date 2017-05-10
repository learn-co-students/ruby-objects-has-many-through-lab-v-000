class Appointment

  attr_accessor :doctor, :patient

  def initialize(date, doctor)
    @doctor = doctor
    @date = "Monday, August 1st"
    doctor.add_appointment(self)
  end

end
