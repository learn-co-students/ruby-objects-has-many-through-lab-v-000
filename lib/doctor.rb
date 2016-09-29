class Doctor
  attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appoint_instance)
    appointments << appoint_instance
    appoint_instance.doctor = self
  end

  def patients
    appointments.map {|appoint| appoint.patient}
  end
end
