class Appointment
  attr_accessor :name, :doctors, :patients

  def initialize(name, patients)
    @name = name
    @patients = patients
    patients.add_appointments(self)
  end
end
