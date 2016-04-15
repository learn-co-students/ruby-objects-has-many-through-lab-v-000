require 'pry'
class Patient
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    @appointments << appointment

  end


  def doctors
    @appointments.collect do |doc|
      doc.doctor
    end
  end
end