class Doctor
  attr_reader(:name, :appointments)
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
    appointment = Appointment.new(patient, self, date)
    @appointments << appointment
    appointment
  end


  def patients
    @appointments.collect{|a| a.patient}
  end
end
