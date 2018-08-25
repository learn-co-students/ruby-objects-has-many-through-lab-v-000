class Doctor
  attr_accessor :name
  @@all = []

  #instantiates a new instance of Doctor with a given name and adds
  #it to the @@all class array for storage
  def initialize(name)
    @name = name
    @@all << self
  end

  #allows user to see an array of all created doctors
  def self.all
    @@all
  end

  #establishes a new instance of Appointment given a date and patient name
  def new_appointment(patient, date)
    Appointment.new(date, self, patient)
  end

  #returns an array of all appointments assigned to that doctor
  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  #sorts through the array returned by #appointments to return assigned patients
  def patients
    self.appointments.map {|my_appointments| my_appointments.patient}
  end
end
