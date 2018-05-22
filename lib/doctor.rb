class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appoint)
    self.appointments << appoint
  end

  def patients
    self.appointments.collect {|x| x.patient}
  end

end