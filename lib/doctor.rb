
class Doctor
  attr_accessor :name 
 @@all = []
  def initialize(name)
    @name = name
    @appointments = []
    @@all<< self
  end
  def self.all 
    @@all
  end
  
def new_appointment(patient,date)
  app = Appointment.new(patient,date)
   @appointments << app 
     app.doctor = self
     app
end
  
  
  def appointments
    @appointments
    end
 
  def patients
    appointments.map { |appointment| appointment.patient}
  end
  
  
end