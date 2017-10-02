class Doctor
  attr_reader :name, :patients
  attr_accessor :appointments, :patient
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end
