class Doctor
 attr_accessor :name
 @@all = []

 def initialize(name)
   self.name = name
   @@all << self
 end

 def new_appointment(patient, date)
   Appointment.new(patient,self,date)
 end

 def appointments
   Appointment.all.select do |appointment|
     appointment.doctor == self
   end
end

def patients
  patients = []

  self.appointments.each do |appointment|
    patients << appointment.patient
  end

  patients

end

 def self.all
   @@all
 end

end
