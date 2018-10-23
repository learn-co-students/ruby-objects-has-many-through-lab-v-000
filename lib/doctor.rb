class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|i| i.doctor == self}
  end

  def patients
    self.appointments.collect {|i| i.patient}.uniq
  end

end
