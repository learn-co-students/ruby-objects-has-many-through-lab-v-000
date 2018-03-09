class Doctor

  attr_accessor :appointments, :name, :patients

  def initialize(name)
    @appointments = []
    @name = name
    @patients = patients
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end

end
