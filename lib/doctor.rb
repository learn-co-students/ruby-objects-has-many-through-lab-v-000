class Doctor
  @@all = [ ]
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end
  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end
  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end
  def patients
    appointments.collect {|a| a.patient}
  end

# Class methods
  def self.all
    @@all
  end

end
