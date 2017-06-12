class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    #name.add_appointment(self)
  end

  def add_appointment(appointment)
    appointment.add_appointment 
    appointment.name
  end
end
