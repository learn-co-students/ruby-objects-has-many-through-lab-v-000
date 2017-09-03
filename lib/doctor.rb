class Doctor
  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(new)
    new.doctor = self
    self.appointments << new
  end

  def patients
    self.appointments.collect { |appointment| appointment.patient }
  end

end