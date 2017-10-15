class Doctor
  attr_accessor :name
  attr_reader :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
