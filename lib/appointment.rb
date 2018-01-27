require 'pry'
 class Appointment
   attr_accessor :doctor, :patient, :date

     def initialize(date, doctor)
     @date = date
     @doctor = doctor  # belongs to a genre
     doctor.add_appointment(self)  # we can say .add_appointment because the self that comes afterwards is looked in the doctor class
     end

   end
