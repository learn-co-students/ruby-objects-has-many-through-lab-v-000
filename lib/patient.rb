class Patient
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    new_appt = Appointment.new(date, self, doctor)
    self.name = new_appt.patient
    new_appt
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    doctors = []
    appointments.each {|appt| doctors << appt.doctor}
    doctors
  end
end
