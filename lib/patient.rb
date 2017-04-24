class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment
    @appointments << appointment
  end

  def doctors
    self.appointments.collect {|a| a.doctor}
  end

end
