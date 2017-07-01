class Doctor

  attr_reader :name
  attr_accessor :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(name)
    self.appointments << name
  end

  def patients
    self.appointments.collect { |appointment| appointment.patient  }
  end

end
