class Patient 
  # class variable 
  @@all = []
  
  # attribute accessors
  attr_accessor :name
  
  # class method 
  def self.all 
    @@all
  end
  
  # instance method
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end 
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end 
  end 
  
  def doctors
    doctors = []
    self.appointments.each do |appointment|
      if !doctors.include?(appointment.doctor)
        doctors << appointment.doctor
      end
    end 
    doctors
  end
end