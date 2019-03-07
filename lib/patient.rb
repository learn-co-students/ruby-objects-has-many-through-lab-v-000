class Patient
  attr_accessor :name, :doctors, :appointments
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |each_appointment| each_appointment.patient == self }
  end

  def doctors
    appointments.collect { |each_appointment| each_appointment.doctor }
  end
end
