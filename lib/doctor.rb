class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    self.appointments.collect do |appt|
      appt.patient
    end
  end

end
