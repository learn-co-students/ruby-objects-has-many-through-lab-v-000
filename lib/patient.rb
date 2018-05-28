class Patient 
  attr_reader :name 
  attr_accessor :appointments
  
  def initialize(name)
    @name = name
    @appointments = []
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    self.appointments << appointment
    appointment
  end 
  
  def doctors 
    Appointment.all.select.collect {|appointment| appointment.doctor if appointment.patient == self}
  end
end