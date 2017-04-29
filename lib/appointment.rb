class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(doctor, date)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
