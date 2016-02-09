class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = Array.new
    @patients = Array.new
  end

  def add_appointment(appointment)
    appointments << appointment
  end
end
