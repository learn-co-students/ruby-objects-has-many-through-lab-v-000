class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @data = date
    @doctor = doctor
    doctor.add_appointment(self)
  end


end
