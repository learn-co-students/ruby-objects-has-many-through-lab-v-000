class Doctor
  attr_accessor :name
  attr_reader :appointments, :patients
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    self.appointments << appointment
    patient.appointments << appointment
    appointment
  end

  def patients
    self.appointments.map {|app| app.patient if app.doctor == self}
  end

end
