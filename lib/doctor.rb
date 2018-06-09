class Doctor
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  
  def self.all
    @@all
  end
  
  def name
    @name
  end
  
  def appointments
    @appointments
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    @appointments << appointment
    appointment
  end
  
  def patients
    @appointments.map do |appointment|
      appointment.patient
    end
  end
end