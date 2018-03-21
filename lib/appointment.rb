require 'pry'
class Appointment
  attr_accessor :doctor, :patient, :time

  def initialize(date, doctor)
    @doctor = doctor
    @date = date
    # binding.pry
    @doctor.add_appointment(self)#(date vs the actual app)
  end

end
