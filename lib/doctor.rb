class Doctor
  attr_accessor :name 

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointments)
    @appointments << appointments
    appointments.doctor = self
  end

  def patients
    @appointments.collect {|appointment| appointment.patient}
  end
end