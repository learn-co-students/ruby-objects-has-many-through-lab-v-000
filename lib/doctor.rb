class Doctor 
  attr_accessor :appointments, :patients
  attr_reader :name
  
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
    Appointment.all.select {|appt| appt.doctor}
  end

  def patients 
    appointments.collect {|appt| appt.patient}
  end

end
