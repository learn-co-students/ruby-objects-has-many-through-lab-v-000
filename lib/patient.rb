class Patient
  attr_accessor :name, :doctors, :appointments

   def initialize(name)
     @name = name
     @appointments = Array.new
     @doctors = Array.new
   end

   def add_appointment(appt_object)
      appt_object.patient = self
      @appointments << appt_object
      @doctors << appt_object.doctor if !@doctors.include?(appt_object.doctor)
   end
end
