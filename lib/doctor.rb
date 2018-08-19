class Doctor
  attr_accessor :name
  
  @@all = []
  
  def self.all()
    @@all
  end
  
  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    @appointments << appointment
    appointment
  end
  
  def patients()
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        @patients << appointment.patient
      end
    end
    @patients
  end
  
  def appointments()
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        @appointments << appointment
      end
    end
    @appointments
  end
  
end