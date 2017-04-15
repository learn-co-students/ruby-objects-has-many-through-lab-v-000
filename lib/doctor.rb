require 'pry'
class Doctor
  attr_accessor :name

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
    #binding.pry
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
