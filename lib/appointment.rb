class Appointment
  attr_accessor :date, :doctor, :patient 

def initialize(date, doctor)
  @date = date
  @doctor = doctor 
  doctor.add_appointment(self) #tells the doctor that the appointment belongs to it
end



end 