class Appointment
attr_accessor :doctor, :date, :patient


def initialize(date, doctor)
  @date = date
  @doctor = doctor
  @patient = patient  
  doctor.add_appointment(self)
end# of initialize


end# of class
