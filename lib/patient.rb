class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(apt)
    @appointments << apt
    apt.patient = self
  end

  def doctors
    @appointments.collect {|apt| apt.doctor}
  end

end
