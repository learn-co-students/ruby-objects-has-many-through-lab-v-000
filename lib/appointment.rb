class Appointment
  attr_accessor :doctor, :date, :patient

  def initialize(date, doctor)
    @doctor = doctor
    @doctors = []
    doctor.add_appointment(self)  
  end

end #of appointment class

