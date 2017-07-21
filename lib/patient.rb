class Patient
  attr_accessor :name, :appointments

  def initialize(name)
    self.name = name
    self.appointments = []
  end

  def add_appointment(appointment)
    self.appointments.push(appointment) unless self.appointments.include?(appointment)
    appointment.patient = self unless appointment.patient
  end

  def doctors
    self.appointments.collect{|appointment| appointment.doctor}.uniq
  end
end
