class Doctor
  attr_accessor :name, :appointments, :patients

  @@all = []

  def initialize(name)
    self.name = name
    self.appointments = []
    self.patients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    new_appointment = Appointment.new(date, patient)
    new_appointment.doctor = self
    self.appointments << new_appointment
    self.patients << patient
    new_appointment
  end
end
