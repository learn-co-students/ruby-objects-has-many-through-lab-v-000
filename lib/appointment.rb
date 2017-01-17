class Appointment
attr_accessor :date, :doctor, :patient

def initialize(date, doctor)
  @date = "Monday, August 1st"
  @doctor = doctor
  doctor.add_appointment(self)
end

end
