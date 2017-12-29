require 'pry'

class Patient

  attr_accessor :appointments

  def initialize(name)
    # initializes with a name
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    # takes in an argument of an apppointment and adds that appointment to it's list of appointments and
    # tells that appointment it belongs to the patient
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    # has many doctors through appointments
    # the method iterates through the appointments array with a map to return the appointment associated with
    # the doctor and returns the doctors in a new array.
    self.appointments.map { |appointment| appointment.doctor }
  end

end
