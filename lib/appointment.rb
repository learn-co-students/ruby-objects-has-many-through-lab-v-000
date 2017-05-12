require 'pry'

class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @name = date
    @doctor = doctor
    doctor.appointments << self
  end
end
