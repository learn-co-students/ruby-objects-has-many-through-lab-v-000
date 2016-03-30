class Doctor
  attr_accessor :name

  @appointments = []

  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    appointment.doctor = self
    @appointments.push(appointment)
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end
