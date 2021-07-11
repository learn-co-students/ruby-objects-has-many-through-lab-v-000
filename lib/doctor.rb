class Doctor
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select { |apt| apt.doctor == self }
  end

  def patients
    appointments.map { |apt| apt.patient }
  end
end
