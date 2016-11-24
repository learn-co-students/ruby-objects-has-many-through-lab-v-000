class Doctor
  attr_accessor :name, :appointments
  def initialize(name)
    @name = name
    @appointments = []
  end
  def appointments
    @appointments
  end
  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end
  def patients
  	self.appointments.collect do |x|
  		x.patient
  	end
  end
end
