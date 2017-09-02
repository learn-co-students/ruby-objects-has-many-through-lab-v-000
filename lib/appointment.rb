class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date #string
    @doctor = doctor #doctor object
    doctor.add_appointment(self)
  end
end
