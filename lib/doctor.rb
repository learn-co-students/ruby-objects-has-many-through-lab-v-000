require 'pry'
class Doctor

  attr_accessor :name, :patients, :appointments

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appt)

    #binding.pry
    appt.doctor = self
    self.patients << appt.patient
    @appointments  << appt

  end

end
