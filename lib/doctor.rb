class Doctor 

attr_accessor :name, :newappointment, :appointments

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @appointments = []
  @patientsarray = []
end 

def new_appointment(patient, date)
  @newappointment = Appointment.new(self, date, patient)
  @appointments << @newappointment
  @newappointment
end 

def self.all 
  @@all 
end

def patients
  @appointments.select do |appointment|
      if !@patientsarray.include? appointment.patient
      @patientsarray << appointment.patient
    end 
  end
  @patientsarray
end





end