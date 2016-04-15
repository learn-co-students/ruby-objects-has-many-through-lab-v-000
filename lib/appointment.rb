require 'pry'
class Appointment
  attr_accessor :patient, :doctor
  def initialize(date, doctor_who)
    @date = date
    @doctor = doctor_who
    doctor_who.add_appointment(self)
  end

end