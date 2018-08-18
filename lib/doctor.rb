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

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def patients
    appointments.map { |doc_appt| doc_appt.patient }
  end

end
