require 'pry'

class Appointment

  attr_accessor :doctor, :patient

  def initialize(date, doctor)
    # initializes with a date and a doctor
    @date = date
    @doctor = doctor
    @doctor.appointments << self
  end

end
