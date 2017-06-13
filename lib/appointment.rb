class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) #hey doctor here's an appointment
  end


end
