class Appointment
attr_accessor :doctor, :patient, :date

def initialize(date, doctor)
  @doctor = doctor
  @date = date
  doctor.add_appointment(self)
end
end
