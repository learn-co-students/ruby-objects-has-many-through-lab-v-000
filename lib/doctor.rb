require 'pry'
class Doctor

  attr_accessor :name, :patient

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    raise AssociationTypeMismatchError, "Appointment class is expected" if !appointment.is_a?(Appointment)
    @appointments << appointment unless @appointments.include?(appointment)
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.each {|appointment| @patients << appointment.patient unless @patients.include?(appointment.patient)}
    @patients
  end


end
