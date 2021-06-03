class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    #tell appt it belongs to doctor and tell doctor it has a new appointment
    @doctor.add_appointment(self)
  end
end