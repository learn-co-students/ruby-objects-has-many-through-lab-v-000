require 'pry'

class Appointment
  attr_accessor :doctor, :patient, :date

  def initialize(date, doctor)
    @date = date
    doctor.add_appointment(self)
    @patient = []
  end
end
