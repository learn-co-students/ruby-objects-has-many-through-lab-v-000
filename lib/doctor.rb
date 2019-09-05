require "pry"
class Doctor

  attr_accessor :name, :patients

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
    self.appointments.collect do |app|
      app.patient
      #binding.pry
    end
  end


end
