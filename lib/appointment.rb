class Appointment

  attr_accessor :date, :doctor, :patient

  def initialize(date_string, doctor)
    @date = date_string
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
