class Appointment
  attr_accessor :doctor, :patient, :time

  def initialize(time, doctor)
    @time=time
    @doctor=doctor
    doctor.add_appointment(self)

  end

end
