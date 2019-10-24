class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self #appointment and doctor
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect {|appointment| appointment.patient }
  end
end
