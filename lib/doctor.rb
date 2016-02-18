require 'pry'

class Doctor

  attr_reader :name, :appointments #may need accessor for adding appts

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt_object)
    appointments << appt_object
    appt_object.doctor = self
  end

  def patients
    appointments.collect {|appointment| appointment.patient}

  end

end