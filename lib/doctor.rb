
require 'pry'
class Doctor
   attr_accessor :name, :appointments

   def initialize(name)
      @name = name
      @appointments = []
   end

   def add_appointment(appointment)
      appointments.push(appointment)
      appointment.doctor = self
   end

   def patients
      appointments.collect(&:patient)
   end
end
