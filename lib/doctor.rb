class Doctor

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appt)
    appointments << appt #Note: this assumes appt is an object
    appt.doctor = self
  end

  def patients
    appointments.collect {|a| a.patient}
  end




end
