class Doctor
  attr_accessor :name #has a name

  @@all = []  #class variable that begins as an empty array

  def initialize(name) #a doctor should be initialized with a name.
    @name = name
    @@all << self # And be saved in the @@all array
  end

  def self.all  #class method that lists each patient in the class variable
    @@all
  end

  def new_appointment(patient, date) #instance method that takes a date and instance of patient
    Appointment.new(patient, self, date) # and creates a new appointment. The appt should know it belongs to the doctor (self)
  end

  def appointments  #instance method
    Appointment.all.select { |appt| appt.doctor == self } #that iterates through all appts and finds those belonging to this doctor
  end

  def patients #instance method
    self.appointments.collect { |appt| appt.patient } #iterates over that dr's appts and collects the patient that belongs to each appt.
  end
end
