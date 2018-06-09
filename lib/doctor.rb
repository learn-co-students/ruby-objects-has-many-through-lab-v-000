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

  def new_appointment(date, patient)
    @@all << self
  end

  def appointments
    @@all.collect {|appt| patient.appointment}
  end

  def patients
    appointments.collect {|patient| appointment.patient}
  end
end
