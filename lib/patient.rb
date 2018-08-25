class Patient
  attr_accessor :name
  @@all = []

  #instantiates a new Patient object with a given name and stores it in the
  #@@all class variable array
  def initialize(name)
    @name = name
    @@all << self
  end

  #allows user to access the @@all class variable array for all created patients
  def self.all
    @@all
  end

  #instantiates a new Appointment object with a given doctor and date and assigns
  #is to the current patient
  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end

  #returns a list of all appointments assigned to the current patient
  def appointments
    Appointment.all.select {|appointments| appointments.patient == self}
  end

  #utilizes the list from #appointments to return all doctors the current
  #patient will be seeing
  def doctors
    self.appointments.map {|my_visits| my_visits.doctor}
  end
end
