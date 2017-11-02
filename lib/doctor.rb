class Doctor

  #Variables
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  #Methods
  def add_appointment(appointment)
    @appointments << appointment
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
