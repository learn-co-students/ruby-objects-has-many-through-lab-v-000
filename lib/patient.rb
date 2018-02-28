class Patient
  
  attr_accessor :name

  def initialize(name)
    @name = name 
    @appointments =[]
  end

  def appointments
    @appointments 
  end

  def add_appointment(appt)
    @appointments << appt
    appt.patient = self
  end

  def doctors
    self.appointments.collect do |a|
      a.doctor
    end
  end

end