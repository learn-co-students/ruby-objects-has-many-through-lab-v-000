class Patient 

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment 
    appointment.patient = self 
  end

  def appointments 
    @appointments 
  end

  def doctors
    @appointments.map do |apps|
      apps.doctor
    end 
  end   

end 