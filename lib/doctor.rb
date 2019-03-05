class Doctor 
  attr_accessor :name
  attr_reader :appointments, :patients
  
  @@all = []
  @appointments = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(patient, date)
    new_appointment = Appointment.new(patient, date, self)
  end
  
  def appointments 
    Appointment.all.select {|appt| appt.doctor == self}
  end

  def patients 
    self.appointments.collect {|appointment| appointment.patient}
  end

end
