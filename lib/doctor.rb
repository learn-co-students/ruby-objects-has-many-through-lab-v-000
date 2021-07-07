# The Doctor model:

# The Doctor class needs a class variable @@all that begins as an empty array.

class Doctor  
  attr_accessor :name, :patient, :appointment
  @@all = []

# A doctor should be initialized with a name and be saved in the @@all array.
def initialize (name)
  @name = name
  @@all << self 
  
end

# The Doctor class needs a class method .all that lists each doctor in the class variable.

def self.all
  @@all
end

# The Doctor class needs an instance method, #new_appointment, that takes in a an instance of the Patient class and a date, and creates a new Appointment. That Appointment should know that it belongs to the doctor

def new_appointment(patient, date)
  Appointment.new(patient, self, date)
end
  
# The Doctor class needs an instance method, #appointments, that iterates through all Appointments and finds those belonging to this doctor.

def appointments
  Appointment.all.select {|appointment| appointment.doctor ==self}
end 

# The Doctor class needs an instance method, #patients, that iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.
# (note to self:  below code is using &: which is shorthand for:  appointments.map{|appointment| appointment.patient} )

  def patients
    appointments.map(&:patient)
  end
end
  