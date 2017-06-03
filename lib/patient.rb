require 'pry'
class Patient
attr_accessor :name
  def initialize(name)
    @name = name
    @appointments = []
  end
  #add_appointment takes in an argument of an apppointment
  def add_appointment(appointment)
  #adds that appointment to it's list of #appointments
    @appointments << appointment
    #tells that appointment it belongs to the patient
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end
