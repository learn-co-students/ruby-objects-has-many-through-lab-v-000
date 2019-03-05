class Patient 
  attr_accessor :name, :appointments, :patients
  
  @@all = []
  @appointments = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  # takes in an argument of a doctor and a date and creates a new Appointment. The Appointment should know that it belongs to the patient
  def new_appointment(doctor, date)
    Appointment.all.select {|doctor| doctor.date == self}
  end

  # iterates through the Appointments array and returns Appointments that belong to the patient
  def appointments
    self.appointments.collect {|appt| appt.patients}
  end

  # has many patients, through appointments
  def patients
    self.appointments.collect {|appt| appt.patient}
  end 

  # iterates over that patient's Appointments and collects the doctor that belongs to each Appointment
  def doctors
    self.appointments.collect {|appt| appt.doctors}
  end 
  
end  
