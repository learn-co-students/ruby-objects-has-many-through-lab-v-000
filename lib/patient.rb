class Patient 
  @@all = []
  attr_accessor :name
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments 
    Appointment.all.select{|appointment| appointment.patient == self}
  end
  
  def doctors
    patient_doctors = []
    Appointment.all.each do |appointment| 
      if appointment.patient == self
        patient_doctors << appointment.doctor
      end
    end
    patient_doctors
  end
end