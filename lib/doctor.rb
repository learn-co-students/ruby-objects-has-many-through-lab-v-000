require 'pry'

class Doctor
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    binding.pry
  end

end
