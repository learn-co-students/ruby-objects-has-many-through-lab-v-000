class Doctor
  attr_accessor :name, :appointments

  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appointment)
    self.appointments.push(appointment) unless self.appointments.include?(appointment)
  end

  def patients
    self.appointments.collect{|appointment| appointment.patient}
  end
end
