require 'pry'

class Patient
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(add_appointment)
    @appointment << appointment
  end

  def doctor
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

  

end
