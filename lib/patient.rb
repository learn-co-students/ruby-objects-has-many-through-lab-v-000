require 'pry'
class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appt)
    @appointments << appt
    appt.patient = self
  end

  def doctors
    self.appointments.collect do |appt|
      appt.doctor
    end
  end

end
