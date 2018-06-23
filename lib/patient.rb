class Patient
  attr_accessor :name, :appointments
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
    appt = Appointment.new(date, self, doctor)
    appointments << appt
    appt
  end

  def doctors
    appointments.collect {|appt| appt.doctor}
  end
end