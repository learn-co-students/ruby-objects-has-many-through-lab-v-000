class Doctor
  # class variable 
  @@all = []
  
  # attribute accessors
  attr_accessor :name
  
  # class method 
  def self.all 
    @@all
  end
  
  # instance methods
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def new_appointment(patient, date)
    new_appointment = Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def patients
    patients = []
    self.appointments.each do |appointment|
      if !patients.include?(appointment.patient)
        patients << appointment.patient
      end
    end 
    patients
  end
end