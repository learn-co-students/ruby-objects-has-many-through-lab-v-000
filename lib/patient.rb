class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  @@all
  end

  def new_appointment(doctor, date)
  appointment =  Appointment.new(doctor, self, date)
  appointment
  end

  def appointments
    Appointment.all
  end

  def doctors
Appointment.all.map{|a| a.doctor}
  end


end
