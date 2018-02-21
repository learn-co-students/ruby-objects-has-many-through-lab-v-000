class Appointment
  attr_accessor :date, :doctor, :patient #belongs to doctor and patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) #calling add_appointment from doctor class
  end
end
