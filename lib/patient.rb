require 'pry'

class Patient

  attr_reader :name, :appointment, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
