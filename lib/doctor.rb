require 'pry'

class Doctor
  attr_reader :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    if appointment.patient != nil
      @patients << appointment.patient
    end
  end


end
