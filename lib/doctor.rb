class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(apt)
    @appointments << apt
    apt.doctor = self
  end

  def patients
    @appointments.collect {|apt| apt.patient}
  end
end