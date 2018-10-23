class Doctor

  @@all = []

  attr_accessor :name, :patients

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end

  def patients
    appointments.map {|a| a.patient}
  end

end
