class Doctor
  attr_accessor :name

  def initialize(name)
    self.name = name
    @appointments = []
  end

  def add_appointment(appoint_obj)
    @appointments << appoint_obj
  end

  def appointments
    @appointments
  end

  def patients
    appointments.collect { |a| a.patient }
  end
end
