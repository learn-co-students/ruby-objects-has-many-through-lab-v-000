class Doctor
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment # Adds appointment a Doctor instance
    appointment.doctor = self # Assigns itself as doctor to an instance of Class Appointment
  end

  def patients #Iterates over the appointments array of instance of Class Doctor, and collects patient from each appointment
    self.appointments.collect {|appointment| appointment.patient}
  end
end
