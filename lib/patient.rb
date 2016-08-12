require 'pry'

class Patient
  attr_accessor :name, :appointment

  def initialize(name)
    @name = name
    @appointment = []
  end

  def add_appointment(appt)
    @appointment << appt
    appt.patient = self
  end

  def appointments
    @appointment
  end


  def doctors
    self.appointments.collect do |appt|
      appt.doctor
    end
  end

end