class Doctor

  attr_accessor :name, :appointments

  def initialize(name)
    @appointments = []
    @name = name
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointment
    @appointments
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end

 end