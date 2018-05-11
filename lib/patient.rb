require 'pry'
class Patient

  attr_accessor :name, :appointments
  #attr_reader :songs

  def initialize(name)
    @name = name
    @appointments = []
    #binding.pry
  end

  def add_appointment(appointment)
     @appointments << appointment
     appointment.patient = self
   end


   def doctors
    @appointments.collect do |appointment|
       appointment.doctor
     end
   end
end
