require 'pry'

class Appointment

  attr_accessor :appointment, :doctor, :patient

  def initialize(appointment,doctor)
    @appointment = appointment
    @doctor = doctor
    doctor.appointments << self
  end

end