require 'pry'
class Doctor
  attr_accessor :name
  def initialize(name)
    @name = name
    @appointments = []
    @patient = []
  end

  def add_appointment(appointment)
#adds a new appointment to the doctor's @appointments array and tells that
 #appointment that it belongs to the doctor
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end
end
