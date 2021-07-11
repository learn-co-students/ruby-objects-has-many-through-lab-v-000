class Patient
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select { |apt| apt.patient == self }
  end

  def doctors
    appointments.collect { |apt| apt.doctor }
  end
end
