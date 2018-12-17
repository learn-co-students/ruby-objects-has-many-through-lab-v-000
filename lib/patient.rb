class Patient

  attr_accessor :name

  @@patients = []

  def initialize(name)
    @name = name
    @@patients << self
  end

  def self.all
    @@patients
  end

  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    appointments.map { |appointment, doctor| appointment.doctor }
  end

end
