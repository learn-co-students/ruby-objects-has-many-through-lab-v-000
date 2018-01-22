class Doctor
  attr_reader :name
  attr_accessor :appointments


  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.collect{|a| a.patient}
  end


end