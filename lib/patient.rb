require 'pry'

class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self #or HOW ELSE DO I TELL THE APPOINTMENT THAT IT BELONGS TO THIS PATIENT?
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

end
