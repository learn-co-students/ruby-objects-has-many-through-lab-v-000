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
  appt =  Appointment.new(self, date, patient)
  appt
  end

  def appointments
    Appointment.all
  end

  def patients
  Appointment.all.map{|a| a.patient}
  end



end
