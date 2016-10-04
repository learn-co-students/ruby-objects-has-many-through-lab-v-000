class Patient
  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment # Adds appointment to a Patient instance
    appointment.patient = self # Assigns itself as patient to an instance of Class Appointment
  end

  def doctors #Iterates over the appointments array of instance of Class Patient, and collects doctor from each appointment
    self.appointments.collect {|appointment| appointment.doctor}
  end
end
