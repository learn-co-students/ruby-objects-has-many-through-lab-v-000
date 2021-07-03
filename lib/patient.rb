class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    date = Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select {|app| app.patient == self}
  end

  def doctors
    appointments.collect {|app| app.doctor}
  end
end
