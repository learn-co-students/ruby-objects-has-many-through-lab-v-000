class Doctor
  attr_accessor :name
#initializes with name and empty array of appointments
  def initialize(name)
    @name = name
    @appointments = []
  end
#adds an appointment
  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end
#has many appointments
  def appointments
    @appointments
  end
#has many patients through appointments
  def patients
    self.appointments.collect do |appointment|
       appointment.patient
     end
   end
end
