class Doctor

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  @@all = []

  def self.all
    @@all
  end

  def new_appointment(patient, time)
    Appointment.new(self, patient, time)
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def patients
    appointments.map {|appt| appt.patient}
  end
end
