class Doctor
  @@all = []
  attr_accessor :name

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
    apt = Appointment.all
    apt.select {|appointment| appointment.doctor == self}
  end

  def patients
    self.appointments.collect {|apt| apt.patient}
  end

end
