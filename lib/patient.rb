require 'pry'
class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
    #name.add_appointment(self)
  end

  def add_appointment(appointment)
    @appointments << appointment
    #binding.pry
    appointment.patient = self
    #binding.pry
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end
end
