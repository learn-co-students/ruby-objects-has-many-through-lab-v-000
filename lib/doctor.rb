class Doctor

  attr_accessor :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(apt)
    @patients << apt.patient
    @appointments << apt
  end

end
