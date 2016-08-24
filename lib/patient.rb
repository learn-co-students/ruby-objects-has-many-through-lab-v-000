class Patient
  
  attr_accessor :name, :appointments

  def initialize(name)
    self.name = name
    @appointments = []  
  end

  def add_appointment(appointment)
    unless @appointments.any? { |appointment| saved_appointments == appointment }
      appointment.patient = self
      @appointments << appointment

    end
  end

  def doctors
    @appointments.collect { |appointment| appointment.doctor  }
  end
  
  
end