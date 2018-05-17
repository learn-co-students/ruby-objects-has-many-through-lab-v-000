# doctor has many appointments and has many patients
# doctor has many patients THROUGH appointments

class Doctor

  attr_accessor :name, :appointments, :patients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
    @patients = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    appointments << appointment
    patients << patient
    patient.doctors << self
    patient.appointments << appointment
    appointment
  end

end
