class Doctor
  attr_accessor :name, :new_appointment
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @appointments = []
    # @patients = []
    @@all << self
  end

  def new_appointment(date, patient)
    date = Appointment.new(date, patient, self)
    @appointments << date
    # @patients << patient
    date
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.select {|appointment| appointment.patient}
  end


end
