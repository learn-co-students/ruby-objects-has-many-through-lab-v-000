require 'pry'

class Patient

  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(appt)
      #binding.pry
      self.appointments << appt
      appt.patient = self
      @doctors << appt.doctor
  end

end
