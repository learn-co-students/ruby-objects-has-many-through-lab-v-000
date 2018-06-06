class Doctor
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

  def new_appointment(patient, date)
    app = Appointment.new(date, patient, self)
    @appointments << app
    app
  end

  def patients
    @appointments.map { |a| a.patient }
  end
end
