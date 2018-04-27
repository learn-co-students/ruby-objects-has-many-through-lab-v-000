class Patient
  attr_accessor :name, :appointments, :appointment, :doctor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def doctors
    self.appointments.collect do |date|
      date.doctor
    end
  end  
end
