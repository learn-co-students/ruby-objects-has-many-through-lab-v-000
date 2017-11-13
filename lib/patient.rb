class Patient

  attr_accessor :name, :appointments, :doctors

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
  end

  def add_appointment(apt)
    @appointments << apt
    apt.patient = self
    @doctors << apt.doctor
  end

end
