require 'pry'

class Doctor

  attr_accessor :name, :date, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end


  def add_appointment(appointment)
    @appointments << appointment
      appointment.doctor = self
  end

  def appointments
    @appointments
  end



  def patients
    self.appointments.collect do |i|
      i.patient
  end
end



end
