class Patient 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @appointments = [] 
  end 
  
  def new_appointment(doctor, date)
    new_app = Appointment.new(self, doctor, date)  
    @appointments << new_app 
    new_app 
  end 
  
  def appointments 
    @appointments
  end 
  
  def doctors 
    the_doctors = [] 
    @appointments.each do |app|
      the_doctors << app.doctor 
    end 
    the_doctors.uniq 
  end 
  
end 