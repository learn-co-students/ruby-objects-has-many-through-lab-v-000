class Appointment
   attr_accessor :date, :doctor, :patient
#initializes with a date and a doctor
#adds an Appointment
#has many doctors through appointments
   def initialize(date, doctor)
     @date = date
     @doctor = doctor
     doctor.add_appointment(self)
   end

 end
