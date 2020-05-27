class Doctor

  attr_accessor :name

  @@doctors = []

  def initialize(name)
    @name = name
    @@doctors << self
  end

  def self.all
    @@doctors
  end

  def new_appointment(patient, date)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    appointments.map { |appointment, patient| appointment.patient }
  end

end
