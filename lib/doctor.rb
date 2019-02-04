class Doctor 
  
  @@all = []
  attr_accessor :name, :patient, :appointments
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient, date)
    appointment_one = Appointment.new(date, patient, self)
    @appointments << appointment_one
    appointment_one
  end
  
  def appointments
    appointments = @appointments
    appointments.select {|appointment| appointment.doctor == self} 
  end
  
  def patients
    self.appointments.map do |appointment|
      appointment.patient 
    end 
  end 
  
end 