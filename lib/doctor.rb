class Doctor
  attr_accessor :name, :appointments, :patients
  @@all = []
  
  def initialize(name)
    @name = name
    @patients = []
    @appointments = []
    @@all << self
  end

  def new_appointment(patient, date)
    appt = Appointment.new(self, patient, date)
    patients << appt.patient
    appointments << appt
    appt
  end

  def self.all
    @@all
  end

end
