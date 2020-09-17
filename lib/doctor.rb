class Doctor
  attr_accessor :name

  @@all = []

  def self.all 
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|app| app.doctor == self}
  end

  def patients
    self.appointments.collect {|app| app.patient}
  end

end
