class Doctor
  attr_accessor :appointments
  attr_reader :name

  def initialize(name) #initializes with a name and an empty collection of appointments

    @name = name
    @appointments = []

  end

  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end

  end

end
