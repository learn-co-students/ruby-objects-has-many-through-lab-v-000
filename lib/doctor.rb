class Doctor
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.each {|a| a.doctor == self}
  end

  def patients
    Appointment.all.collect {|a| a.patient}
  end
end
