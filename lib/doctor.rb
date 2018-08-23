class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(doctor_name)
    @name = doctor_name
    @@all << self 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end 
  
  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self
    end 
  end 
  
  def patients
    appointments.map do |single_appointment|
      single_appointment.patient
    end 
  end 
  
end 