class Appointment
attr_accessor :doctor, :date

def intialize(date, doctor)
  @date = date
  @doctor = doctor
  doctor.add_appointment(date)
end# of initialize



end# of class
