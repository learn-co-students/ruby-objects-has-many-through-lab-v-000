class Doctor
  attr_accessor :name, :age
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

  def patients
    appointments.map{|appt| appt.patient}
  end

  def appointments
    Appointment.all.select{|appt| appt.doctor == self}
  end
end
