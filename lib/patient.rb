require 'pry'
class Patient
   attr_accessor :name, :appointments

   def initialize(name)
      @name = name
      @appointments = []
   end

   def add_appointment(appointment)
      appointments.push(appointment)
      appointment.patient = self
   end

   def doctors
      appointments.collect(&:doctor)
   end
end
