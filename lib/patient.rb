    require 'pry'
class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors

    # binding.pry
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

  def multiplyEach(arr)
    arr.each do |num|
      num * 2
    end
  end

end
