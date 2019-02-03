class Patient
  attr_accessor :name, :doctor, :appointments,

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(doctor, date, self)
    @appointments << appointment
    appointment
  end

  def appointments
    @appointments.select {|appointment|
      appointment.patient == self}
  end

  def doctors
    appointments.map {|appointment|
      appointment.doctor}
  end
end
