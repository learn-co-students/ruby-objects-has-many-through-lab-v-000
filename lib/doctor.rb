require 'pry'

class Doctor

  attr_accessor :name, :appointments

  def initialize(name)
    # initializes with a name and an empty collection of appointments
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    # adds a new appointment to the doctor's @appointments array and tells that appointment that it belongs to the doctor
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    # has many patients, through appointments
    self.appointments.map { |appointment| appointment.patient }
  end

end
