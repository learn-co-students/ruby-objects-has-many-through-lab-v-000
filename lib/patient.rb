require 'pry'

class Patient

  attr_accessor :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt_object)
    appointments << appt_object
    appt_object.patient = self
  end

  def doctors
    appointments.collect { |appointment| appointment.doctor }
  end

end