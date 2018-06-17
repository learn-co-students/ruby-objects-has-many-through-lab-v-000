class Doctor
  attr_accessor :name, :appointments, :patients, :patient

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
  end

  def patients
    self.appointments.collect do |patient|
      patient.patient
    end
  end
end