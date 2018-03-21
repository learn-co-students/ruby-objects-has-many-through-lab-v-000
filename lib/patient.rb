class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def add_appointment(appointment)
    @appointments << appointment
  end
end
