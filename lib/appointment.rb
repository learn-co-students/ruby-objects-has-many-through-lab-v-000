class Appointment
#"song" class
  attr_accessor :date, :doctor, :patient

#initializes with a date and a doctor
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
#belongs to a doctor and a patient
    doctor.add_appointment(self)
  end

end
