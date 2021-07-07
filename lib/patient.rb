class Patient
  attr_accessor :name, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|app| app.patient == self}
  end

  def doctors
    self.appointments.map {|app| app.doctor}
  end

  def self.all
    @@all
  end

end 
