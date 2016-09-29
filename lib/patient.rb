class Patient
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appoint_instance)
    appointments << appoint_instance
    appoint_instance.patient = self
  end

  def doctors
    appointments.map{|appoint| appoint.doctor}
  end
end
