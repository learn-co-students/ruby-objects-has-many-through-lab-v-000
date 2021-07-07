class Patient
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.map {|patient| patient.doctor}
  end

  def all
    @@all
  end

end
