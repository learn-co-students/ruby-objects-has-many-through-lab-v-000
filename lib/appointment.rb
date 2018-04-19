require 'pry'

class Appointments
  attr_accessor :doctor_who, :date, :patient

  def initialize(date, doctor_who)
    @date = date
    @doctor_who = doctor_who
    doctor_who.add_appointment(self)
  end

end
