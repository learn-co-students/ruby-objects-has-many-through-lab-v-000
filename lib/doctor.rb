class Doctor
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    Appointment.all.collect {|appointment| appointment.patient}
  end
# The Doctor class needs an instance method, #patients,
# that iterates over that doctor's appointments and collects
# the patient that belongs to each appointment.

end
