class Patient
  attr_accessor :appointments, :name, :doctors

  def initialize (name)
    @name = name
    @appointments = []
  end


  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self unless appointment.patient == self
  end

  def doctors
    self.appointments.collect{|k| k.doctor}
  end

end

#A patient has a Doctor
#a patient has appointments
